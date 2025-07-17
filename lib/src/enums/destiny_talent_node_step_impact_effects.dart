class DestinyTalentNodeStepImpactEffects {
    const DestinyTalentNodeStepImpactEffects(this._value);
    factory DestinyTalentNodeStepImpactEffects.fromJson(int numValue) => DestinyTalentNodeStepImpactEffects(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyTalentNodeStepImpactEffects None = DestinyTalentNodeStepImpactEffects(0);
    ///ArmorPiercing = 1
    static const DestinyTalentNodeStepImpactEffects ArmorPiercing = DestinyTalentNodeStepImpactEffects(1);
    ///Ricochet = 2
    static const DestinyTalentNodeStepImpactEffects Ricochet = DestinyTalentNodeStepImpactEffects(2);
    ///Flinch = 4
    static const DestinyTalentNodeStepImpactEffects Flinch = DestinyTalentNodeStepImpactEffects(4);
    ///CollateralDamage = 8
    static const DestinyTalentNodeStepImpactEffects CollateralDamage = DestinyTalentNodeStepImpactEffects(8);
    ///Disorient = 16
    static const DestinyTalentNodeStepImpactEffects Disorient = DestinyTalentNodeStepImpactEffects(16);
    ///HighlightTarget = 32
    static const DestinyTalentNodeStepImpactEffects HighlightTarget = DestinyTalentNodeStepImpactEffects(32);
    ///All = 63
    static const DestinyTalentNodeStepImpactEffects All = DestinyTalentNodeStepImpactEffects(63);

    int get value {
        return _value;
    }

    bool contains(DestinyTalentNodeStepImpactEffects childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyTalentNodeStepImpactEffects item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is DestinyTalentNodeStepImpactEffects){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}