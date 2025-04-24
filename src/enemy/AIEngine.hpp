#pragma once

#include <rk_types.h>
#include "../system/CourseMap.hpp"

namespace Enemy {

    struct AIEngine {
        AIEngine();
        virtual ~AIEngine();
        virtual void onOutOfBounds(const System::MapdataJugemPoint&);
        void endRace();
        void forceRecalculation(s32);

        u8 field_0x00[0x164];
    };

    struct AIEngineKart: public AIEngine {
        AIEngineKart();
        virtual ~AIEngineKart();
    };

    struct AIEngineBike: public AIEngine {
        AIEngineBike();
        virtual ~AIEngineBike();
    };

} // namespace Enemy
