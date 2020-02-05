/// Represents the different states a progression reward item can be in.
class DestinyProgressionRewardItemState {
    const DestinyProgressionRewardItemState(this._value);
    factory DestinyProgressionRewardItemState.fromJson(int numValue) => DestinyProgressionRewardItemState(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyProgressionRewardItemState None = DestinyProgressionRewardItemState(0);
    ///Invisible = 1
    /// If this is set, the reward should be hidden.
    static const DestinyProgressionRewardItemState Invisible = DestinyProgressionRewardItemState(1);
    ///Earned = 2
    /// If this is set, the reward has been earned.
    static const DestinyProgressionRewardItemState Earned = DestinyProgressionRewardItemState(2);
    ///Claimed = 4
    /// If this is set, the reward has been claimed.
    static const DestinyProgressionRewardItemState Claimed = DestinyProgressionRewardItemState(4);
    ///ClaimAllowed = 8
    /// If this is set, the reward is allowed to be claimed by this Character. An item can be earned but still can't be claimed in certain circumstances, like if it's only allowed for certain subclasses. It also might not be able to be claimed if you already claimed it!
    static const DestinyProgressionRewardItemState ClaimAllowed = DestinyProgressionRewardItemState(8);

    int get value {
        return _value;
    }

    bool contains(DestinyProgressionRewardItemState childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyProgressionRewardItemState item){
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