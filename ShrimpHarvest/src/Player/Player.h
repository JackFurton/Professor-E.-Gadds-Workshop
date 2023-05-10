#include "Fish.h"
#include "Bait.h"
#include "Mercenary.h"
#include "Gear.h"
#include <string>
#include <vector>

class Player {
private:
    std::string name;
    int level;
    int experience;
    int gold;
    int trophies;
    int knowledge;
    std::vector<Fish> fishInv;
    std::vector<Bait> baits;
    std::vector<Mercenary> mercenaries;
    Gear gear;

public:
    Player(std::string name);

    std::string getName();
    int getLevel();
    int getExperience();
    int getGold();
    int getTrophies();
    int getKnowledge();
    std::vector<Fish> getFishInv();
    std::vector<Bait> getBaits();
    Gear getGear();

    void setLevel(int level);
    void setExperience(int experience);
    void setGold(int gold);
    void setTrophies(int trophies);
    void setKnowledge(int knowledge);
    void addFish(Fish fish);
    void addBait(Bait bait);
    void hireMercenary(Mercenary mercenary);
    void setGear(Gear gear);

    void gainExperience(int amount);
    void gainGold(int amount);
    void gainTrophies(int amount);
    void gainKnowledge(int amount);
};
