class PresenceOnlineStateFlags {
    const PresenceOnlineStateFlags(this._value);
    factory PresenceOnlineStateFlags.fromJson(int numValue) => PresenceOnlineStateFlags(numValue);
    
    final int _value;
    
    ///None = 0
    static const PresenceOnlineStateFlags None = PresenceOnlineStateFlags(0);
    ///Destiny1 = 1
    static const PresenceOnlineStateFlags Destiny1 = PresenceOnlineStateFlags(1);
    ///Destiny2 = 2
    static const PresenceOnlineStateFlags Destiny2 = PresenceOnlineStateFlags(2);

    int get value {
        return _value;
    }

    bool contains(PresenceOnlineStateFlags childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (PresenceOnlineStateFlags item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is PresenceOnlineStateFlags){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}