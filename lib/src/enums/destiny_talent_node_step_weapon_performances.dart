class DestinyTalentNodeStepWeaponPerformances {
    const DestinyTalentNodeStepWeaponPerformances(this._value);
    factory DestinyTalentNodeStepWeaponPerformances.fromJson(int numValue) => DestinyTalentNodeStepWeaponPerformances(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyTalentNodeStepWeaponPerformances None = DestinyTalentNodeStepWeaponPerformances(0);
    ///RateOfFire = 1
    static const DestinyTalentNodeStepWeaponPerformances RateOfFire = DestinyTalentNodeStepWeaponPerformances(1);
    ///Damage = 2
    static const DestinyTalentNodeStepWeaponPerformances Damage = DestinyTalentNodeStepWeaponPerformances(2);
    ///Accuracy = 4
    static const DestinyTalentNodeStepWeaponPerformances Accuracy = DestinyTalentNodeStepWeaponPerformances(4);
    ///Range = 8
    static const DestinyTalentNodeStepWeaponPerformances Range = DestinyTalentNodeStepWeaponPerformances(8);
    ///Zoom = 16
    static const DestinyTalentNodeStepWeaponPerformances Zoom = DestinyTalentNodeStepWeaponPerformances(16);
    ///Recoil = 32
    static const DestinyTalentNodeStepWeaponPerformances Recoil = DestinyTalentNodeStepWeaponPerformances(32);
    ///Ready = 64
    static const DestinyTalentNodeStepWeaponPerformances Ready = DestinyTalentNodeStepWeaponPerformances(64);
    ///Reload = 128
    static const DestinyTalentNodeStepWeaponPerformances Reload = DestinyTalentNodeStepWeaponPerformances(128);
    ///HairTrigger = 256
    static const DestinyTalentNodeStepWeaponPerformances HairTrigger = DestinyTalentNodeStepWeaponPerformances(256);
    ///AmmoAndMagazine = 512
    static const DestinyTalentNodeStepWeaponPerformances AmmoAndMagazine = DestinyTalentNodeStepWeaponPerformances(512);
    ///TrackingAndDetonation = 1024
    static const DestinyTalentNodeStepWeaponPerformances TrackingAndDetonation = DestinyTalentNodeStepWeaponPerformances(1024);
    ///ShotgunSpread = 2048
    static const DestinyTalentNodeStepWeaponPerformances ShotgunSpread = DestinyTalentNodeStepWeaponPerformances(2048);
    ///ChargeTime = 4096
    static const DestinyTalentNodeStepWeaponPerformances ChargeTime = DestinyTalentNodeStepWeaponPerformances(4096);
    ///All = 8191
    static const DestinyTalentNodeStepWeaponPerformances All = DestinyTalentNodeStepWeaponPerformances(8191);

    int get value {
        return _value;
    }

    bool contains(DestinyTalentNodeStepWeaponPerformances childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyTalentNodeStepWeaponPerformances item){
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