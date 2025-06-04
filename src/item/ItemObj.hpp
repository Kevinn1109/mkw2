#pragma once

#include <rk_types.h>

#include "BaseItemMath.hpp"
#include "ItemEventQueue.hpp"
#include "render/ModelDirector.hpp"
#include "field/CollisionInfo.hpp"
#include "geo/BoxColManager.hpp"
#include "snd/ItemSnd.hpp"
#include <egg/math/eggVector.hpp>

namespace Render {
    struct ObjectRenderer {
        union RenderFlags {
            int uint;
            u8 bytes[4];
        };

        EGG::Vector3f * position;
        float drawDistanceBack;
        float drawDistanceFwd;
        float playerDistances[4];
        short areaGroups;
        u8 unk;
        RenderFlags drawFlags; /* 1 = disable, 20 = disable draw dist calc */
    };
};

extern bool isDKJP;
namespace Item {
    typedef enum eItemHitResult {
        HIT_NONE = 0, 
        HIT_BOUNCE = 1, 
        HIT_BREAK = 2
    } ItemHitResult;

    typedef enum eItemType {
        ITEMOBJ_GREEN_SHELL = 0,
        ITEMOBJ_RED_SHELL = 1,
        ITEMOBJ_BANANA = 2,
        ITEMOBJ_MUSHROOM = 3,
        ITEMOBJ_STAR = 4,
        ITEMOBJ_BLUE_SHELL = 5,
        ITEMOBJ_LIGHTNING = 6,
        ITEMOBJ_FAKE_ITEM_BOX = 7,
        ITEMOBJ_MEGA_MUSHROOM = 8,
        ITEMOBJ_BOMB = 9,
        ITEMOBJ_BLOOPER = 10,
        ITEMOBJ_POW = 11,
        ITEMOBJ_GOLDEN_MUSHROOM = 12,
        ITEMOBJ_BULLET = 13,
        ITEMOBJ_CLOUD = 14
    } ItemType;

    typedef enum ItemObjFlags1 {
        NONE = 0,
        TRAILED = 0x1 /* 00 */,
        EXISTS = 0x2 /* 01 */,
        DROPPED = 0x4 /* 02 */,
        GROUNDED = 0x8 /* 03 */,
        x10 = 0x10 /* 04 */,
        x20 = 0x20 /* 05 */,
        BROKEN = 0x40 /* 06 */,
        VANISHED = 0x80 /* 07 */,
        x100 = 0x100 /* 08 */,
        x200 = 0x200 /* 09 */,
        BELOW_DEAD_PLANE = 0x400 /* 10 */,
        x800 = 0x800 /* 11 */,
        x1000 = 0x1000 /* 12 */,
        x2000 = 0x2000 /* 13 */,
        x4000 = 0x4000 /* 14 */,
        FROM_DROP = 0x8000 /* 15 */,
        LIGHT_RING_ENABLED = 0x10000 /* 16 */,
        x20000 = 0x20000 /* 17 */,
        x40000 = 0x40000 /* 18 */,
        x80000 = 0x80000 /* 19 */,
        x100000 = 0x100000 /* 20 */,
        LOCAL_BROKEN = 0x200000 /* 21 */,
        LOCAL_VANISHED = 0x400000 /* 22 */,
        LOCAL_DESPAWNED = 0x800000 /* 23 */,
        x1000000 = 0x1000000 /* 24 */,
        POS_PREV_OVERRIDDEN = 0x2000000 /* 25 */,
        x4000000 = 0x4000000 /* 26 */,
        TRAIL_HIT_1 = 0x8000000 /* 27 */,
        TRAIL_HIT_2 = 0x10000000 /* 28 */,
        TRAIL_HIT_3 = 0x20000000 /* 29 */,
        x40000000 = 0x40000000 /* 30 */
    } ItemObjFlags1;

    inline ItemObjFlags1 operator|(ItemObjFlags1 a, ItemObjFlags1 b) {
        return static_cast<ItemObjFlags1>(static_cast<int>(a) | static_cast<int>(b));
    }

    class ItemObj {
    public:
        virtual void initModel();
        virtual void loadResources();
        virtual void updateModelSrt();
        virtual void updateModelTranslation();

        ItemObj();

        void modelSetVisible(bool visible, bool disable);
        virtual void modelEnable();

        virtual void onActivate();

        void setLightSet(GFX::LightSet *lightSet);
        void setLightSetIdx(u8 lightSetIdx);

        virtual bool onUse();
        virtual ItemHitResult onHit();
        virtual void onDrop();
        virtual void onDespawn();

        void loadFromRecvEvent(ItemType itemType, ItemRKNetEventItem *queueItem, bool isTrailHit, bool isDrop, u8 ownerId);

        virtual void onOnlineShot();
        virtual void onOnlineDrop();

        void init(u16 id, u16 typeIndex, eItemType itemType);
        //initModel
        void spawn();
        void create(eItemType itemType, u8 ownerId, EGG::Vector3f position, bool fixedSpawnId);
        void initialize(eItemType itemType);

        void scaleHitbox(bool useRadius);
        void fixScale();
        void setScale(EGG::Vector3f * scale);

        // Placeholders:
        void initDefaultRenderer();
        void initRenderer(char *fileName, char *resName, char *shadowResName, int unk1, char **anims, int unk2, void* unk3, int unk4);
        void drop();
        
        // Functions below are not part of this TU
        u32 calcMetaData(bool fixedSpawnId);

        void setScnMtxFromMtx(EGG::Matrix34f * mtxOut, f32 angle);
        void setScnMtxFromQuat(EGG::Matrix34f * mtxOut);
    
        typedef void (ItemObj::*UpdateFunc)();
        typedef void (ItemObj::*BounceHitFunc)();
    private:
        ItemType itemId;
        u16 id; /* Global */
        u16 typeIndex; /* Id of type */
        u16 netIdentifier; /* u8[0] = owner, u8[1] = counter */
        
        //TODO: change to vectors
        EGG::Quatf quaternion;
        RowVec34 transform;
        EGG::Vector3f speed;
        EGG::Vector3f scale;
        float scaleFactor;
        
        u8 ownerId;
        u8 trailOwnerId;
        u16 field15_0x6e;
        u16 field16_0x70;
        
        u32 updateRes; /* 0x4 = despawned, 0x8 = made stationary */
        ItemObjFlags1 flags; 
        unk32 flags2;
        EGG::Vector3f posDraw; /* Used by blue shell while high in the air */
        EGG::Vector3f posStart; /* Used during throw if flags2&8 */
        EGG::Vector3f * positionPtr; /* Points to h20 mtx */
        Render::ModelDirector * mainModel;
        Render::ModelDirector * shadowModel;
        Render::ObjectRenderer * renderer;
        Render::ModelDirector * lightModel;
        GFX::LightSet * lightSet;
        BoxColUnit * boxColEntity;
        float hitboxHeight;
        float hitboxRadius;
        EGG::Vector3f lastPosition;
        EGG::Vector3f lastYRotation;

        u32 curCollisionFlag;
        Field::ColInfo colInfo;
        Field::DrivableColInfo * drivableColInfo;
        u32 landCollisionFlag;
        u8 onlineTarget;
        
        float targetYScale;
        float field43_0x144[3];
        float someRotationVec[3];
        short someCounter;
        short vanishCountdown;
        
        u32 activeTime;
        u32 counter;

        UpdateFunc updateFunc;
        BounceHitFunc bounceHitFunc;

        Sound::ItemSnd * soundActor;
        bool field52_0x184;
        bool belowDeadPlane;
    };
}
