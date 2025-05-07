#pragma once

#include "AIInfo.hpp"
#include "util/State.hpp"

namespace Enemy {

    struct AIItemBase: public Util::StateSequencer<AIItemBase> {
        virtual ~AIItemBase();

        Util::State<AIItemBase> mStateIdle;
        Util::State<AIItemBase> mStateStock;
        Util::State<AIItemBase> mStateThrowDefault;
        Util::State<AIItemBase> mStateKinoko;
        Util::State<AIItemBase> mStateThrowFront;
        Util::State<AIItemBase> mStateThrowBack;
        Util::State<AIItemBase> mStateHold;
        Util::State<AIItemBase> mStateGoal;
        AIInfo* mpAIInfo;
        s32 mItemHoldState;
        bool mbUseItem;
        bool mbIsTimeToHold;
        bool mbImmediatlyThrowItemBackwards;
        s32 mItemThrowDirection;

        enum eItemHoldState {
            NO_ITEM = 0,
            HAS_ITEM = 1,
            THROW_ITEM = 2
        };
    
        enum eItemThrowDirection {
            DEFAULT = 0,
            THROW_FORWARDS = 1,
            THROW_BACKWARDS = 2
        };
    };

    struct AIItemRace: public AIItemBase {
        ~AIItemRace();

        u32 mDelayTimeBeforeUsingItem;
        bool mbIsGoal;
    };
    
}
