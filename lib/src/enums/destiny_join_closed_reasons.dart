/// A Flags enumeration representing the reasons why a person can't join this user's fireteam.
class DestinyJoinClosedReasons {
    const DestinyJoinClosedReasons(this._value);
    factory DestinyJoinClosedReasons.fromJson(int numValue) => DestinyJoinClosedReasons(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyJoinClosedReasons None = DestinyJoinClosedReasons(0);
    ///InMatchmaking = 1
    /// The user is currently in matchmaking.
    static const DestinyJoinClosedReasons InMatchmaking = DestinyJoinClosedReasons(1);
    ///Loading = 2
    /// The user is currently in a loading screen.
    static const DestinyJoinClosedReasons Loading = DestinyJoinClosedReasons(2);
    ///SoloMode = 4
    /// The user is in an activity that requires solo play.
    static const DestinyJoinClosedReasons SoloMode = DestinyJoinClosedReasons(4);
    ///InternalReasons = 8
    /// The user can't be joined for one of a variety of internal reasons. Basically, the game can't let you join at this time, but for reasons that aren't under the control of this user.
    static const DestinyJoinClosedReasons InternalReasons = DestinyJoinClosedReasons(8);
    ///DisallowedByGameState = 16
    /// The user's current activity/quest/other transitory game state is preventing joining.
    static const DestinyJoinClosedReasons DisallowedByGameState = DestinyJoinClosedReasons(16);
    ///Offline = 32768
    /// The user appears to be offline.
    static const DestinyJoinClosedReasons Offline = DestinyJoinClosedReasons(32768);

    int get value {
        return _value;
    }

    bool contains(DestinyJoinClosedReasons childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyJoinClosedReasons item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is DestinyJoinClosedReasons){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}