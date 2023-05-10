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
    Gear gear;  // Added gear object

public:
    Player(std::string name) :
            name(name), level(1), experience(0), gold(0), trophies(0), knowledge(0),
            gear(Rod("Basic Rod", RodQuality::LOW, 0.5, 100)) {}

    // Accessors
    std::string getName() { return name; }
    int getLevel() { return level; }
    int getExperience() { return experience; }
    int getGold() { return gold; }
    int getTrophies() { return trophies; }
    int getKnowledge() { return knowledge; }
    std::vector<Fish> getFishInv() { return fishInv; }
    std::vector<Bait> getBaits() { return baits; }
    Gear getGear() { return gear; }

    // Mutators
    void setLevel(int level) { this->level = level; }
    void setExperience(int experience) { this->experience = experience; }
    void setGold(int gold) { this->gold = gold; }
    void setTrophies(int trophies) { this->trophies = trophies; }
    void setKnowledge(int knowledge) { this->knowledge = knowledge; }
    void addFish(Fish fish);
    void addBait(Bait bait);
    void hireMercenary(Mercenary mercenary);
    void setGear(Gear gear) { this->gear = gear; }

    void gainExperience(int amount);
    void gainGold(int amount);
    void gainTrophies(int amount);
    void gainKnowledge(int amount);
};
