#pragma once

#include "AIInfo.hpp"

namespace Enemy {

    struct AITrickHandler {
        virtual ~AITrickHandler();
        virtual void field_0x0C();
        virtual void calc();
        virtual void disableWheelie();
        virtual void update();

        AIInfo* mpInfo;
    };

    struct AITrickHandlerBike: public AITrickHandler {
        virtual ~AITrickHandler();
        void field_0x0C();
        void calc();
        void disableWheelie();
        virtual void update();

        bool mbPerformWheelie;
    };

    struct AITrickHandlerBikeUnused: public AITrickHandlerBike {
        ~AITrickHandler();
        void update();
    };

}
