class DestinyTalentNodeStepGuardianAttributes {
    const DestinyTalentNodeStepGuardianAttributes(this._value);
    factory DestinyTalentNodeStepGuardianAttributes.fromJson(int numValue) => DestinyTalentNodeStepGuardianAttributes(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyTalentNodeStepGuardianAttributes None = DestinyTalentNodeStepGuardianAttributes(0);
    ///Stats = 1
    static const DestinyTalentNodeStepGuardianAttributes Stats = DestinyTalentNodeStepGuardianAttributes(1);
    ///Shields = 2
    static const DestinyTalentNodeStepGuardianAttributes Shields = DestinyTalentNodeStepGuardianAttributes(2);
    ///Health = 4
    static const DestinyTalentNodeStepGuardianAttributes Health = DestinyTalentNodeStepGuardianAttributes(4);
    ///Revive = 8
    static const DestinyTalentNodeStepGuardianAttributes Revive = DestinyTalentNodeStepGuardianAttributes(8);
    ///AimUnderFire = 16
    static const DestinyTalentNodeStepGuardianAttributes AimUnderFire = DestinyTalentNodeStepGuardianAttributes(16);
    ///Radar = 32
    static const DestinyTalentNodeStepGuardianAttributes Radar = DestinyTalentNodeStepGuardianAttributes(32);
    ///Invisibility = 64
    static const DestinyTalentNodeStepGuardianAttributes Invisibility = DestinyTalentNodeStepGuardianAttributes(64);
    ///Reputations = 128
    static const DestinyTalentNodeStepGuardianAttributes Reputations = DestinyTalentNodeStepGuardianAttributes(128);
    ///All = 255
    static const DestinyTalentNodeStepGuardianAttributes All = DestinyTalentNodeStepGuardianAttributes(255);

    int get value {
        return _value;
    }

    bool contains(DestinyTalentNodeStepGuardianAttributes childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyTalentNodeStepGuardianAttributes item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is DestinyTalentNodeStepGuardianAttributes){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}