class FireteamFinderOptionValueFlags {
    const FireteamFinderOptionValueFlags(this._value);
    factory FireteamFinderOptionValueFlags.fromJson(int numValue) => FireteamFinderOptionValueFlags(numValue);
    
    final int _value;
    
    ///None = 0
    static const FireteamFinderOptionValueFlags None = FireteamFinderOptionValueFlags(0);
    ///CreateListingDefaultValue = 1
    static const FireteamFinderOptionValueFlags CreateListingDefaultValue = FireteamFinderOptionValueFlags(1);
    ///SearchFilterDefaultValue = 2
    static const FireteamFinderOptionValueFlags SearchFilterDefaultValue = FireteamFinderOptionValueFlags(2);

    int get value {
        return _value;
    }

    bool contains(FireteamFinderOptionValueFlags childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (FireteamFinderOptionValueFlags item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is FireteamFinderOptionValueFlags){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}