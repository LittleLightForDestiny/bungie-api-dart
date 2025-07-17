/// A Flags enumeration/bitmask where each bit represents a possible state that a Record/Triumph can be in.
class DestinyRecordState {
    const DestinyRecordState(this._value);
    factory DestinyRecordState.fromJson(int numValue) => DestinyRecordState(numValue);
    
    final int _value;
    
    ///None = 0
    /// If there are no flags set, the record is in a state where it *could* be redeemed, but it has not been yet.
    static const DestinyRecordState None = DestinyRecordState(0);
    ///RecordRedeemed = 1
    /// If this is set, the completed record has been redeemed.
    static const DestinyRecordState RecordRedeemed = DestinyRecordState(1);
    ///RewardUnavailable = 2
    /// If this is set, there's a reward available from this Record but it's unavailable for redemption.
    static const DestinyRecordState RewardUnavailable = DestinyRecordState(2);
    ///ObjectiveNotCompleted = 4
    /// If this is set, the objective for this Record has not yet been completed.
    static const DestinyRecordState ObjectiveNotCompleted = DestinyRecordState(4);
    ///Obscured = 8
    /// If this is set, the game recommends that you replace the display text of this Record with DestinyRecordDefinition.stateInfo.obscuredDescription.
    static const DestinyRecordState Obscured = DestinyRecordState(8);
    ///Invisible = 16
    /// If this is set, the game recommends that you not show this record. Do what you will with this recommendation.
    static const DestinyRecordState Invisible = DestinyRecordState(16);
    ///EntitlementUnowned = 32
    /// If this is set, you can't complete this record because you lack some permission that's required to complete it.
    static const DestinyRecordState EntitlementUnowned = DestinyRecordState(32);
    ///CanEquipTitle = 64
    /// If this is set, the record has a title (check DestinyRecordDefinition for title info) and you can equip it.
    static const DestinyRecordState CanEquipTitle = DestinyRecordState(64);

    int get value {
        return _value;
    }

    bool contains(DestinyRecordState childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyRecordState item){
      return value & item.value;
    }

    @override
    bool operator ==(dynamic other) {
        if(other is int){
            return other == value;
        }
        try{
        return value == other.value;
        }catch(e){
            return other == this;
        }
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}