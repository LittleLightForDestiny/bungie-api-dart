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
    ///BeyondLight = 64
    static const DestinyGameVersions BeyondLight = DestinyGameVersions(64);
    ///Anniversary30th = 128
    static const DestinyGameVersions Anniversary30th = DestinyGameVersions(128);
    ///TheWitchQueen = 256
    static const DestinyGameVersions TheWitchQueen = DestinyGameVersions(256);
    ///Lightfall = 512
    static const DestinyGameVersions Lightfall = DestinyGameVersions(512);
    ///TheFinalShape = 1024
    static const DestinyGameVersions TheFinalShape = DestinyGameVersions(1024);
    ///EdgeOfFate = 28535
    static const DestinyGameVersions EdgeOfFate = DestinyGameVersions(28535);
    ///Renegades = 28536
    static const DestinyGameVersions Renegades = DestinyGameVersions(28536);

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
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is DestinyGameVersions){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}