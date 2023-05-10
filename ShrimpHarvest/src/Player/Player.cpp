class Player {
private:
    std::string name;
    int level;
    int experience;
    int gold;
    int trophies;
    int knowledge;
    std::vector<Fish> fishCaught;
    std::vector<Bait> baits;
    std::vector<Mercenary> mercenaries;
    Gear gear;

public:
    Player(std::string name) : 
		name(name), level(1), experience(0), gold(0), trophies(0), knowledge(0) {}

    // Accessors
    std::string getName() { return name; }
    int getLevel() { return level; }
    int getExperience() { return experience; }
    int getGold() { return gold; }
    int getTrophies() { return trophies; }
    int getKnowledge() { return knowledge; }
    std::vector<Fish> getFishCaught() { return fishCaught; }
    std::vector<Bait> getBaits() { return baits; }
    Location getCurrentLocation() { return currentLocation; }
    Mercenary getHiredMercenary() { return hiredMercenary; }

    // Mutators
    void setLevel(int level) { this->level = level; }
    void setExperience(int experience) { this->experience = experience; }
    void setGold(int gold) { this->gold = gold; }
    void setTrophies(int trophies) { this->trophies = trophies; }
    void setKP(int KP) { this->KP = KP; }
    void setCurrentLocation(Location location) { this->currentLocation = location; }
    void setHiredMercenary(Mercenary mercenary) { this->hiredMercenary = mercenary; }
    void gainExperience(int amount);
    void gainGold(int amount);
    void gainTrophies(int amount);
    void gainKP(int amount);
    void addFish(Fish fish);
    void addBait(Bait bait);
    void hireMercenary(Mercenary mercenary);
};
