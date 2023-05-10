#include "Rod.h"

Rod::Rod(std::string name, RodQuality quality, double catchEffectiveness, double basePrice) 
    : name_(name), quality_(quality), catchEffectiveness_(catchEffectiveness), basePrice_(basePrice) {}

std::string Rod::getName() const {
    return name_;
}

RodQuality Rod::getQuality() const {
    return quality_;
}

double Rod::getCatchEffectiveness() const {
    return catchEffectiveness_;
}

double Rod::getBasePrice() const {
    return basePrice_;
}
