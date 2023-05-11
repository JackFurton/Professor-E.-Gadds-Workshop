#ifndef FISHINGSPOT_H
#define FISHINGSPOT_H

#include "Fish.h" // Assuming the Fish class is defined in "Fish.h"

class FishingSpot {
private:
    Fish fishType;
    int quantity;
    int enemyFish;
    int defenses;
    int level;
    int regenerationRate;
    int id;

public:
    FishingSpot(Fish fishType, int level, int id);

    // Accessors
    Fish getFishType();
    int getQuantity();
    int getEnemyFish();
    int getDefenses();
    int getLevel();
    int getRegenerationRate();
    int getId();

    // Mutators
    void setQuantity(int quantity);
    void setEnemyFish(int enemyFish);
    void setDefenses(int defenses);
    void setRegenerationRate(int regenerationRate);

    // Methods
    void regenerateFish(int bonus);
};

#endif
