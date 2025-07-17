class FireteamFinderOptionAvailability {
    const FireteamFinderOptionAvailability(this._value);
    factory FireteamFinderOptionAvailability.fromJson(int numValue) => FireteamFinderOptionAvailability(numValue);
    
    final int _value;
    
    ///None = 0
    static const FireteamFinderOptionAvailability None = FireteamFinderOptionAvailability(0);
    ///CreateListingBuilder = 1
    static const FireteamFinderOptionAvailability CreateListingBuilder = FireteamFinderOptionAvailability(1);
    ///SearchListingBuilder = 2
    static const FireteamFinderOptionAvailability SearchListingBuilder = FireteamFinderOptionAvailability(2);
    ///ListingViewer = 4
    static const FireteamFinderOptionAvailability ListingViewer = FireteamFinderOptionAvailability(4);
    ///LobbyViewer = 8
    static const FireteamFinderOptionAvailability LobbyViewer = FireteamFinderOptionAvailability(8);

    int get value {
        return _value;
    }

    bool contains(FireteamFinderOptionAvailability childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (FireteamFinderOptionAvailability item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is FireteamFinderOptionAvailability){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}