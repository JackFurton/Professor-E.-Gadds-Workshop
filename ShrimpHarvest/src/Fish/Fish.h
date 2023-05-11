#ifndef FISH_H
#define FISH_H

#include <string>

class Fish {
private:
    std::string type;
    int sellValue;
    int catchDifficulty;
    int level;
    int expValue;
    int prestigeValue;

public:
    Fish(std::string type, int sellValue, int catchDifficulty, int level, int expValue, int prestigeValue);

    std::string getType();
    int getSellValue();
    int getCatchDifficulty();
    int getLevel();
    int getExpValue();
    int getPrestigeValue();
};

#endif
