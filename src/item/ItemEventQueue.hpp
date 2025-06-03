#pragma once

#include <rk_types.h>

#include "egg/core/eggDisposer.hpp"

namespace Item {
    class ItemObj;

    struct ItemRKNetEventItem {
        static void initTrailHitItem(ItemRKNetEventItem * queueItem, ItemObj * item, bool isOutgoing);
        static void initDropItem(ItemRKNetEventItem * queueItem, ItemObj * item, bool isOutgoing);
        static void initItem(ItemRKNetEventItem * queueItem, ItemObj * item, bool isOutgoing);

        u8 data[0x18];
        u32 objectId;
        u32 action;
        u32 recvTime;
    };
    static_assert(sizeof(ItemRKNetEventItem) == 36);

    class ItemRKNetEventQueue : public EGG::Disposer {
        u8 queueStartId;
        u8 queueLength;

         void * queueInfos;
        ItemRKNetEventItem * queueItems;

        unk32 unk;

        u8 queueRecvStartId;
        u8 queueRecvLength;

        void * queueRecvInfos;
        ItemRKNetEventItem * queueRecvItems;
    };
    static_assert(sizeof(ItemRKNetEventQueue) == 44);
}
