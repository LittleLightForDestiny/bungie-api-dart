class DestinyTalentNodeStepDamageTypes {
    const DestinyTalentNodeStepDamageTypes(this._value);
    factory DestinyTalentNodeStepDamageTypes.fromJson(int numValue) => DestinyTalentNodeStepDamageTypes(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyTalentNodeStepDamageTypes None = DestinyTalentNodeStepDamageTypes(0);
    ///Kinetic = 1
    static const DestinyTalentNodeStepDamageTypes Kinetic = DestinyTalentNodeStepDamageTypes(1);
    ///Arc = 2
    static const DestinyTalentNodeStepDamageTypes Arc = DestinyTalentNodeStepDamageTypes(2);
    ///Solar = 4
    static const DestinyTalentNodeStepDamageTypes Solar = DestinyTalentNodeStepDamageTypes(4);
    ///Void = 8
    static const DestinyTalentNodeStepDamageTypes Void = DestinyTalentNodeStepDamageTypes(8);
    ///All = 15
    static const DestinyTalentNodeStepDamageTypes All = DestinyTalentNodeStepDamageTypes(15);

    int get value {
        return _value;
    }

    bool contains(DestinyTalentNodeStepDamageTypes childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyTalentNodeStepDamageTypes item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is DestinyTalentNodeStepDamageTypes){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}