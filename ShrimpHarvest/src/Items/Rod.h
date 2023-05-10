#ifndef ROD_H
#define ROD_H

#include <string>

enum class RodQuality {
    LOW,
    MEDIUM,
    HIGH
};

class Rod {
public:
    Rod(std::string name, RodQuality quality, double catchEffectiveness, double basePrice);

    std::string getName() const;
    RodQuality getQuality() const;
    double getCatchEffectiveness() const;
    double getBasePrice() const;

private:
    std::string name_;
    RodQuality quality_;
    double catchEffectiveness_;
    double basePrice_;
};

#endif
