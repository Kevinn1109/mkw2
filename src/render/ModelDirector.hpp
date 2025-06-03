#pragma once

#include <rk_types.h>

#include "gfx/GFXManager.hpp"

namespace Render {
    class ModelTransformer;

    class ModelDirector {
    public:
        ModelDirector();
        virtual ~ModelDirector();
        virtual void setEnabled(bool enable);

        void setLightSetIdx(u8 lightSetIdx);
        void setLightSet(GFX::LightSet* lightSet);

        void setFlagHByteBit(u32 bitIndex);
        void unsetFlagHByteBit(u32 bitIndex);

        u32 flags;
        u16 field_0x4;
        void * resMdl;
        void * g3dHolder;
        void * g3dList[2];

        u8 field_0x1c[0x28 - 0x1c];

        ModelTransformer * transformer;

        u8 field_0x2c[0x40 - 0x2c];
        void * disposer;
        void * renderer;
        float * field_0x48;
    };
    static_assert(sizeof(ModelDirector) == 0x4c);

    class ModelTransformer {
    public:
        void setAnimKeys(u16 animIdx, float animStart, float animEnd);
    };
}
