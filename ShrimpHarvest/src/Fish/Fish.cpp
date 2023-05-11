#include "Fish.h"

Fish::Fish(std::string type, int value, double catchDifficulty, int level, int experienceGain, int prestigeValue)
        : type(type), value(value), catchDifficulty(catchDifficulty), level(level), experienceGain(experienceGain), prestigeValue(prestigeValue) {}

std::string Fish::getType() { return type; }

int Fish::getValue() { return value; }

double Fish::getCatchDifficulty() { return catchDifficulty; }

int Fish::getLevel() { return level; }

int Fish::getExperienceGain() { return experienceGain; }

int Fish::getPrestigeValue() { return prestigeValue; }
