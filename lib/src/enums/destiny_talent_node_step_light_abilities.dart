class DestinyTalentNodeStepLightAbilities {
    const DestinyTalentNodeStepLightAbilities(this._value);
    factory DestinyTalentNodeStepLightAbilities.fromJson(int numValue) => DestinyTalentNodeStepLightAbilities(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyTalentNodeStepLightAbilities None = DestinyTalentNodeStepLightAbilities(0);
    ///Grenades = 1
    static const DestinyTalentNodeStepLightAbilities Grenades = DestinyTalentNodeStepLightAbilities(1);
    ///Melee = 2
    static const DestinyTalentNodeStepLightAbilities Melee = DestinyTalentNodeStepLightAbilities(2);
    ///MovementModes = 4
    static const DestinyTalentNodeStepLightAbilities MovementModes = DestinyTalentNodeStepLightAbilities(4);
    ///Orbs = 8
    static const DestinyTalentNodeStepLightAbilities Orbs = DestinyTalentNodeStepLightAbilities(8);
    ///SuperEnergy = 16
    static const DestinyTalentNodeStepLightAbilities SuperEnergy = DestinyTalentNodeStepLightAbilities(16);
    ///SuperMods = 32
    static const DestinyTalentNodeStepLightAbilities SuperMods = DestinyTalentNodeStepLightAbilities(32);
    ///All = 63
    static const DestinyTalentNodeStepLightAbilities All = DestinyTalentNodeStepLightAbilities(63);

    int get value {
        return _value;
    }

    bool contains(DestinyTalentNodeStepLightAbilities childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyTalentNodeStepLightAbilities item){
      return value & item.value;
    }

    @override
    bool operator == (dynamic other) {
        return other.value == value || other == value;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}