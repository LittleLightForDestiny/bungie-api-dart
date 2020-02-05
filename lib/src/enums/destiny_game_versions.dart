/// A flags enumeration/bitmask indicating the versions of the game that a given user has purchased.
class DestinyGameVersions {
    const DestinyGameVersions(this._value);
    factory DestinyGameVersions.fromJson(int numValue) => DestinyGameVersions(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyGameVersions None = DestinyGameVersions(0);
    ///Destiny2 = 1
    static const DestinyGameVersions Destiny2 = DestinyGameVersions(1);
    ///DLC1 = 2
    static const DestinyGameVersions DLC1 = DestinyGameVersions(2);
    ///DLC2 = 4
    static const DestinyGameVersions DLC2 = DestinyGameVersions(4);
    ///Forsaken = 8
    static const DestinyGameVersions Forsaken = DestinyGameVersions(8);
    ///YearTwoAnnualPass = 16
    static const DestinyGameVersions YearTwoAnnualPass = DestinyGameVersions(16);
    ///Shadowkeep = 32
    static const DestinyGameVersions Shadowkeep = DestinyGameVersions(32);

    int get value {
        return _value;
    }

    bool contains(DestinyGameVersions childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyGameVersions item){
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