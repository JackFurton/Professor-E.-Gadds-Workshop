#ifndef GEAR_H
#define GEAR_H

#include "Rod.h"

struct Gear {
    Rod rod;
    Head head;
    Neck neck;
    Torso torso;
    Boots boots;
};

#endif