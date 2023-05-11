#include "FishingSpot.h"

FishingSpot::FishingSpot(Fish fishType, int level, int id) :
        fishType(fishType),
        level(level),
        id(id),
        quantity(100),
        enemyFish(0),
        defenses(0),
        regenerationRate(10) {}

Fish FishingSpot::getFishType() {
    return fishType;
}

int FishingSpot::getQuantity() {
    return quantity;
}

int FishingSpot::getEnemyFish() {
    return enemyFish;
}

int FishingSpot::getDefenses() {
    return defenses;
}

int FishingSpot::getLevel() {
    return level;
}

int FishingSpot::getRegenerationRate() {
    return regenerationRate;
}

int FishingSpot::getId() {
    return id;
}

// Implement mutators
void FishingSpot::setQuantity(int quantity) {
    this->quantity = quantity;
}

void FishingSpot::setEnemyFish(int enemyFish) {
    this->enemyFish = enemyFish;
}

void FishingSpot::setDefenses(int defenses) {
    this->defenses = defenses;
}

void FishingSpot::setRegenerationRate(int regenerationRate) {
    this->regenerationRate = regenerationRate;
}

void FishingSpot::regenerateFish(int bonus) {
    this->quantity = this->regenerationRate + bonus;
}
