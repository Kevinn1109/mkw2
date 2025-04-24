#pragma once

#include <rk_types.h>
#include <egg/math/eggVector.hpp>
#include "AIEngine.hpp"
#include "../kart/KartObjectProxy.hpp"

namespace Enemy {

    struct AI: public KartObjectProxy {
        enum eFlags {
            AI_FLAG_BLOCK_LINE = (1 << 0),
            AI_FLAG_LOOK_BACK_WHILE_BLOCKING_LINE = (1 << 2),
            AI_FLAG_PLAY_WIN_ANIMATION_DURING_CUTSCENE = (1 << 3),
        };

        AI(s32);
        virtual ~AI();
        void init();
        void update();
        const EGG::Vector2f& getStick() const;  
        s32 isCPU();
        s32 isRealLocal();
        s32 isRealLocalAndCPU();
        s32 isAICPU();
        s32 isGhost();
        s32 isSameTeam(const AI&);
        void endRace();
        void onOutOfBounds(const System::MapdataJugemPoint&);
        void forceRecalculation(s32);
        // fn_1_216018
        s32 isAllWheelsCollision();
        s32 isOnGround();
        s32 isDriftingOnGround();
        s32 isHopping();
        s32 isAutoDrift();
        s32 isInBullet();

        AIEngine* mpEngine;
        EGG::Vector2f mStick;
        u32 mFlags;
        u32 mTeam;
    };

} // namespace Enemy
