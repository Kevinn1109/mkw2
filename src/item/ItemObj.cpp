#include <nw4r/math/mathTypes.hpp>

#include "ItemObj.hpp"
#include "BaseItemData.hpp"
#include "ItemDirector.hpp"
#include "gfx/GFXManager.hpp"
#include "system/RaceConfig.hpp"

namespace Item {

// 0x8079d804 - 0x8079d848
void ItemObj::loadResources() {
    // TODO: Could be inlined loadResModelByName
    this->initRenderer(0, "wii_controller", 0, 0, 0, 0, 0, 0);
}

// 0x8079d8bc - 0x8079d91c
ItemObj::ItemObj() {
    this->updateRes = 0;
    this->flags = NONE;
    this->flags2 = 0;
    this->curCollisionFlag = 0;
    this->colInfo.bboxLow.x = 0;
    this->colInfo.bboxLow.y = 0;
    this->colInfo.bboxLow.z = 0;
    this->colInfo.bboxHigh.x = 0;
    this->colInfo.bboxHigh.y = 0;
    this->colInfo.bboxHigh.z = 0;
    this->colInfo.drivableColInfo = NULL;
    this->landCollisionFlag = NONE;
    this->shadowModel = NULL;
    this->mainModel = NULL;
    this->lightModel = NULL;
    this->netIdentifier = -1;
}

extern "C" void fn_1_27799C(void* p);

// 0x8079d920 - 0x8079d9f8
void ItemObj::modelSetVisible(bool visible, bool disable) {
    if (this->mainModel) {
        this->mainModel->setEnabled(visible);
    }
    if (this->shadowModel) {
        this->shadowModel->setEnabled(visible);
    }
    if (this->lightModel) {
        bool lightEnabled = this->flags & LIGHT_RING_ENABLED;
        this->lightModel->setEnabled(!lightEnabled);
    }
    if (visible) {
        fn_1_27799C(this->renderer);
    } else if (disable) {
        this->renderer->drawFlags.uint |= 0x21212121;
    }
}

// 0x8079d9fc - 0x8079da98
void ItemObj::modelEnable() {
    if (this->mainModel) {
        this->mainModel->setEnabled(true);
    }
    if (this->shadowModel) {
        this->shadowModel->setEnabled(true);
    }
    if (this->lightModel) {
        bool lightEnabled = this->flags & LIGHT_RING_ENABLED;
        this->lightModel->setEnabled(!lightEnabled);
    }
    fn_1_27799C(this->renderer);
}

void fn_1_5527C();
extern u8* FUN_80591434();
extern "C" void Panic(...);
extern "C" char fileName;
extern "C" char nw4rException;

// 0x8079da9c - 0x8079dc40
void ItemObj::onActivate() {
    bool special = this->itemId == ITEMOBJ_BANANA && isDKJP;
    if (special) {
        this->lightSet = NULL;
        if (this->mainModel) {
            this->mainModel->setLightSetIdx(6);
        }
        return;
    } 
    
    ItemType item = this->itemId;
    if (ItemData::table[item].useLight) {
        GFX::LightManagerHolder *lightManagerHolder = GFX::gfxManager[0]->lightManagerHolder;
        s16 errorCode = -12;
        if ((u32)lightManagerHolder + 12 <= 0) {
            Panic(&fileName, 0xcf, &nw4rException);
        }
        s32 listLen = lightManagerHolder->inactiveLights.count;
        if (listLen > 0) {
            GFX::LightSet *lightSet = GFX::GFXManager::acquireLightSet();
            this->setLightSet(lightSet);
            bool isDrop = this->flags & FROM_DROP;
            if (!isDrop & ~FROM_DROP) {
                ItemDirector *director = ItemDirector::spInstance;
                Kart::KartObjectProxy *kart = &director->playerList[this->ownerId];
                GFX::LightSet *res = (GFX::LightSet*)kart->kartAccessor_48();
                this->lightSet->copyFrom(res);
            } else {
                this->lightSet->init(0, true);
            } 
        } else {
            this->lightSet = nullptr;
            if (this->mainModel) {
                u8 lightSetIdx;
                bool isDrop = this->flags & FROM_DROP;
                if (!isDrop & ~FROM_DROP) {
                    ItemDirector *director = ItemDirector::spInstance;
                    Kart::KartObjectProxy *kart = &director->playerList[this->ownerId];
                    GFX::LightSet *res = (GFX::LightSet*)kart->kartAccessor_48();
                    lightSetIdx = res->index;
                } else {
                    lightSetIdx = 0;
                }
                this->mainModel->setLightSetIdx(lightSetIdx);
            }
        }
    }
}

// 0x8079dc44 - 0x8079dc5c
void ItemObj::setLightSet(GFX::LightSet *lightSet) {
    this->lightSet = lightSet;
    if (!this->mainModel) {
        return;
    }
    this->mainModel->setLightSet(lightSet);
}

// 0x8079dc60 - 0x8079dcb0
void ItemObj::setLightSetIdx(u8 lightSetIdx) {
    bool special = this->itemId == ITEMOBJ_BANANA && isDKJP;
    if (special) {
      return;
    }

    if (this->lightSet) {
      this->lightSet->index = lightSetIdx;
    } else if (this->mainModel) {
      this->mainModel->setLightSetIdx(lightSetIdx);
    }
}

// 0x8079dcb4 - 0x8079dcb8
bool ItemObj::onUse() {
  return true;
}

// 0x8079dcbc - 0x8079dd68
ItemHitResult ItemObj::onHit() {
  if (this->mainModel) {
      this->mainModel->setEnabled(false);
  }
  if (this->shadowModel) {
      this->shadowModel->setEnabled(false);
  }
  if (this->lightModel) {
      bool lightEnabled = this->flags & LIGHT_RING_ENABLED;
      this->lightModel->setEnabled(!lightEnabled);
  }

  u32 drawFlags = this->renderer->drawFlags.uint;
  this->renderer->drawFlags.uint = drawFlags | 0x21212121;

  return HIT_BREAK;
}

// 0x8079dd6c - 0x8079dd6c
void ItemObj::onDrop() {
  return;
}

// 0x8079dd70 - 0x8079de30
void ItemObj::onDespawn() {
  if (this->mainModel) {
      this->mainModel->setEnabled(false);
  }
  if (this->shadowModel) {
      this->shadowModel->setEnabled(false);
  }
  if (this->lightModel) {
      bool lightEnabled = this->flags & LIGHT_RING_ENABLED;
      this->lightModel->setEnabled(!lightEnabled);
  }

  u32 drawFlags = this->renderer->drawFlags.uint;
  this->renderer->drawFlags.uint = drawFlags | 0x21212121;

  if (this->lightSet) {
    GFX::GFXManager::releaseLightSet(this->lightSet);
    this->lightSet = NULL;
  }
}

// 0x8079de34 - 0x8079dee0
void ItemObj::loadFromRecvEvent(ItemType itemType, ItemRKNetEventItem *queueItem, bool isTrailHit, bool isDrop, u8 ownerId) {
    typedef void (* recvItemInitFunc)(ItemRKNetEventItem*, ItemObj*, bool);
    recvItemInitFunc func;
    if (isTrailHit) {
        func = &ItemRKNetEventItem::initTrailHitItem;
    } else if (isDrop) {
        func = &ItemRKNetEventItem::initDropItem;
    } else {
        func = ItemData::table[itemType].recvItemInitFunc;
    }

    this->ownerId = ownerId;
    this->initialize(itemType);
    func(queueItem, this, false);
    this->spawn();
    this->flags2 |= 1;
}

inline f32 min(f32 a, f32 b) {
    if (a < b) {
        return a;
    } else {
        return b;
    }
}

extern "C" void resetCollisionEntries(u32 &flag);
extern void * PlayerHolder;
extern "C" Kart::KartObjectProxy * PlayerHolder_getPlayer(void* playerHolder, u32 playerId);
extern "C" void QuatFromRowVec34(EGG::Quatf * quat, RowVec34 * mtx);
extern "C" void FUN_807bd7b4(Field::DrivableColInfo * colInfo);
extern "C" u32 FUN_807d2ddc(bool);
extern "C" BoxColUnit *  EntityHolder_insertItemObj(BoxColManager * manager, EGG::Vector3f * position, bool, ItemObj * item, f32 size, f32);

// 0x8079dee4 - 0x8079e1ec
void ItemObj::onOnlineShot() {
    1.0f;
    f32 scaleMax = 0.8f;
    f32 hitboxScale = ItemData::table[this->itemId].hitboxScale;
    // if (scaleMax > hitboxScale) {
    //     scaleMax = hitboxScale;
    // }
    // this->scaleFactor = scaleMax;
    this->scaleFactor = min(scaleMax, ItemData::table[this->itemId].hitboxScale);
    this->fixScale();

    this->lastYRotation.x = 0.0f;
    this->lastYRotation.y = 1.0f;
    this->lastYRotation.z = 0.0f;

    resetCollisionEntries(this->curCollisionFlag);
    this->colInfo.bboxLow.setZero();
    this->colInfo.bboxHigh.setZero();
    this->colInfo.movingFloorDist = -FLT_MIN;
    this->colInfo.wallDist = -FLT_MIN;
    this->colInfo.floorDist = -FLT_MIN;
    this->colInfo.colPerpendicularity = 0.0f;
    this->landCollisionFlag = 0;

    Kart::KartObjectProxy * player = PlayerHolder_getPlayer(PlayerHolder, this->ownerId);
    EGG::Vector3f bodyForward;
    player->getBodyForward(bodyForward);
    this->transform.z = bodyForward;

    this->transform.y.setUp();

    if ((1 << this->itemId & 0b00100011) == 0) {
        this->transform.mirrorZ();
    }
    this->transform.normaliseY();

    QuatFromRowVec34(&this->quaternion, &this->transform);
    this->targetYScale = 0;
    if (this->drivableColInfo) {
        FUN_807bd7b4(this->drivableColInfo);
    }

    this->someCounter = 5;
    this->vanishCountdown = 0;

    this->activeTime = FUN_807d2ddc((this->flags >> 0x19) & 1) - 1;

    UpdateFunc trailUpdateFunc = ItemData::table[this->itemId].trailingObjUpdateFunc;
    if ((this->flags & (BROKEN | VANISHED)) == 0) {
        this->updateFunc = trailUpdateFunc;
    }

    if (((this->flags & (LOCAL_BROKEN|LOCAL_VANISHED|LOCAL_DESPAWNED)) == 0) && 
        !ItemData::table[this->itemId].disableBoxCol && 
        this->boxColEntity == NULL
    ) {
        // BoxColUnit * unit = BoxColManager::spInstance.
        BoxColManager * manager = BoxColManager::spInstance;
        f32 hitboxSize = ItemData::table[this->itemId].hitboxSize;
        f32 hitboxScale = ItemData::table[this->itemId].hitboxScale;
        this->boxColEntity = EntityHolder_insertItemObj(manager, &this->transform.t, true, this, hitboxScale * hitboxSize, 100);
        this->flags2 |= 0x1000;
    }
}

// 0x8079e1f0 - 0x8079e220
void ItemObj::onOnlineDrop() {
    ItemObj::onOnlineShot();
    this->drop();
}

// 0x8079e224 - 0x8079e2fc
void ItemObj::init(u16 id, u16 typeIndex, eItemType itemType) {
    this->itemId = itemType;
    this->id = id;
    this->typeIndex = typeIndex;
    this->loadResources();
    this->updateRes = 0;
    this->flags = NONE;
    this->flags2 = 0;

    this->soundActor = new Sound::ItemSnd();
    this->soundActor->_vf0x118(this, this->itemId);

    if (ItemData::table[this->itemId].canLand || 
        itemType == ITEMOBJ_BANANA || 
        itemType == ITEMOBJ_FAKE_ITEM_BOX || 
        itemType == ITEMOBJ_BOMB
    ) {
        this->colInfo.createDrivableColInfo();
    }
    this->drivableColInfo = this->colInfo.drivableColInfo;
}

// 0x8079e300 - 0x8079e388
void ItemObj::initModel() {
    if (this->mainModel) {
        this->mainModel->setEnabled(false);
    }
    if (this->shadowModel) {
        this->shadowModel->setEnabled(false);
    }
    if (this->lightModel) {
        this->lightModel->setEnabled(false);
    }
}

extern "C" u8*** lbl_1_bss_42D8;

// 0x8079e38c - 0x8079e54c
void ItemObj::spawn() {
    if (this->lightModel) {
        if ((this->flags & LIGHT_RING_ENABLED) == NONE) {
            System::BattleTeam team = System::RaceConfig::spInstance->mRaceScenario.mPlayers[this->ownerId].mTeam;
            this->lightModel->transformer->setAnimKeys(team != 0, 0.0, 1.0);
            this->lightModel->transformer->setAnimKeys(2, 0.0, 1.0);

            if (System::RaceConfig::spInstance->mRaceScenario.mSettings.mCameraMode != System::RaceConfig::Settings::CAMERA_MODE_LIVE_VIEW) {
                int i = 0;
                int hudCount = System::RaceConfig::spInstance->mRaceScenario.mHudCount;
                for (; i < hudCount; i++){
                    u8 playerId = lbl_1_bss_42D8[6][i][0x9c];
                    if (team == System::RaceConfig::spInstance->mRaceScenario.mPlayers[playerId].mTeam) {
                        this->lightModel->setFlagHByteBit(i);
                    } else {
                        this->lightModel->unsetFlagHByteBit(i);
                    }
                }

                if (System::RaceConfig::spInstance->mRaceScenario.mHudCount == 4) {
                    System::RaceConfig::Player * players = System::RaceConfig::spInstance->mRaceScenario.mPlayers;
                    if (players[2].isControlled() && !players[3].isControlled()) {
                        this->lightModel->unsetFlagHByteBit(3);
                    }
                }
            }
        } else {
            int i = 0;
            int hudCount = System::RaceConfig::spInstance->mRaceScenario.mHudCount;
            for (; i < hudCount; i++){
                this->lightModel->unsetFlagHByteBit(i);
            }
        }
    }
}

// -----
// 0x8079ec98 - 0x8079ed18
void ItemObj::scaleHitbox(bool useRadius) {
    f32 scale;
    if (useRadius) {
        u32 itemId = this->itemId;
        scale = ItemData::table[this->itemId].hitboxRadius;
    } else {
        u32 itemId = this->itemId;
        scale = ItemData::table[this->itemId].hitboxSize;
    }
    f32 height = ItemData::table[this->itemId].hitboxHeight;
    
    this->hitboxHeight = this->scale.y * height;
    this->hitboxRadius = this->scale.z * scale;
    
    f32 drawDistBack = ItemData::table[*(volatile int*)&this->itemId].drawDistBack;
    this->renderer->drawDistanceBack = this->hitboxRadius * drawDistBack;
}

// 0x8079ed4c - 0x8079edb0
void ItemObj::fixScale() {
    this->updateRes |= 0x40;
    this->scale.set(this->scaleFactor);
    
    u32 itemId = this->itemId;
    f32 scale = ItemData::table[this->itemId].hitboxSize;
    f32 height = ItemData::table[this->itemId].hitboxHeight;
    
    this->hitboxHeight = this->scale.y * height;
    this->hitboxRadius = this->scale.z * scale;
    
    f32 drawDistBack = ItemData::table[*(volatile int*)&this->itemId].drawDistBack;
    this->renderer->drawDistanceBack = this->hitboxRadius * drawDistBack;
}

// 0x8079edb4 - 0x8079ee2c
void ItemObj::setScale(EGG::Vector3f * scale) {
    VECMultiply(&this->scale, scale, this->scaleFactor);
    this->updateRes = this->updateRes | 0x40;
    f32 hitboxScale;
    u32 itemId = this->itemId;
    hitboxScale = ItemData::table[this->itemId].hitboxRadius;
    f32 height = ItemData::table[this->itemId].hitboxHeight;
    
    this->hitboxHeight = this->scale.y * height;
    this->hitboxRadius = this->scale.z * hitboxScale;
    
    f32 drawDistBack = ItemData::table[*(volatile int*)&this->itemId].drawDistBack;
    this->renderer->drawDistanceBack = this->hitboxRadius * drawDistBack;
}

// 0x8079e550 - 0x8079e5f0
void ItemObj::create(Item::eItemType itemType, u8 ownerId, EGG::Vector3f position, bool fixedSpawnId) {
    this->transform.t = position;
    this->ownerId = ownerId;
    this->trailOwnerId = 12;
    this->initialize(itemType);
    this->spawn();
    ItemObj::updateModelSrt();
    this->netIdentifier = this->calcMetaData(fixedSpawnId);
}

extern "C" bool onlineRace;

// 0x8079e5f4 - 0x8079e880
void ItemObj::initialize(Item::eItemType itemType) {
    this->itemId = itemType;
    this->updateRes = 0;
    this->flags = NONE;
    this->flags2 = 0;
    this->field15_0x6e = 0;
    this->field16_0x70 = 0;
    this->scaleFactor = 0.0001f;
    this->scale.set(0.0001f);
    this->targetYScale = 0.0f;
    this->hitboxHeight = 0.3f;
    this->hitboxRadius = 0.3f;

    resetCollisionEntries(this->curCollisionFlag);
    this->colInfo.bboxLow.setZero();
    this->colInfo.bboxHigh.setZero();
    this->colInfo.movingFloorDist = -FLT_MIN;
    this->colInfo.wallDist = -FLT_MIN;
    this->colInfo.floorDist = -FLT_MIN;
    this->colInfo.colPerpendicularity = 0.0f;
    this->landCollisionFlag = 0;

    this->vanishCountdown = 0;
    this->someCounter = 5;
    this->bounceHitFunc = NULL;
    this->positionPtr = &this->transform.t;
    this->renderer->position = &this->transform.t;
    this->boxColEntity = NULL;
    this->onlineTarget = 12;
    this->netIdentifier = -1;
    if (this->drivableColInfo) {
        FUN_807bd7b4(this->drivableColInfo);
    }

    this->lastPosition = this->transform.t;
    this->posDraw = this->transform.t;
    this->posStart = this->transform.t;
    this->transform.x.set(1.0f, 0.0f, 0.0f);
    this->transform.y.set(0.0f, 1.0f, 0.0f);
    this->transform.z.set(0.0f, 0.0f, 1.0f);

    QuatFromRowVec34(&this->quaternion, &this->transform);

    if (onlineRace) {
        this->flags2 |= 0x20;
    }
    this->flags = this->flags | x20000;
    this->lightSet = NULL;
    this->flags2 &= ~0x8;

    //TODO: Some big loop here

    this->modelEnable();
    this->field52_0x184 = false;
}


//-------------------------------
//Placeholders:
//-------------------------------

// 0x807a05d0 - 0x807a05f0
void ItemObj::updateModelSrt() {
    if (this->flags & x1000000) {
        this->setScnMtxFromQuat(NULL);
    } else {
        this->setScnMtxFromMtx(NULL, 0.0f);
    }
}

// void ItemObj::initDefaultRenderer() {
// }

}
