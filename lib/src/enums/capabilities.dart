class Capabilities {
    const Capabilities(this._value);
    factory Capabilities.fromJson(int numValue) => Capabilities(numValue);
    
    final int _value;
    
    ///None = 0
    static const Capabilities None = Capabilities(0);
    ///Leaderboards = 1
    static const Capabilities Leaderboards = Capabilities(1);
    ///Callsign = 2
    static const Capabilities Callsign = Capabilities(2);
    ///OptionalConversations = 4
    static const Capabilities OptionalConversations = Capabilities(4);
    ///ClanBanner = 8
    static const Capabilities ClanBanner = Capabilities(8);
    ///D2InvestmentData = 16
    static const Capabilities D2InvestmentData = Capabilities(16);
    ///Tags = 32
    static const Capabilities Tags = Capabilities(32);
    ///Alliances = 64
    static const Capabilities Alliances = Capabilities(64);

    int get value {
        return _value;
    }

    bool contains(Capabilities childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (Capabilities item){
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