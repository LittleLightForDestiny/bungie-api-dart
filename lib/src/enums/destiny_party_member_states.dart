/// A flags enumeration that represents a Fireteam Member's status.
class DestinyPartyMemberStates {
    const DestinyPartyMemberStates(this._value);
    factory DestinyPartyMemberStates.fromJson(int numValue) => DestinyPartyMemberStates(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyPartyMemberStates None = DestinyPartyMemberStates(0);
    ///FireteamMember = 1
    /// This one's pretty obvious - they're on your Fireteam.
    static const DestinyPartyMemberStates FireteamMember = DestinyPartyMemberStates(1);
    ///PosseMember = 2
    /// I don't know what it means to be in a 'Posse', but apparently this is it.
    static const DestinyPartyMemberStates PosseMember = DestinyPartyMemberStates(2);
    ///GroupMember = 4
    /// Nor do I understand the difference between them being in a 'Group' vs. a 'Fireteam'.
    /// I'll update these docs once I get more info. If I get more info. If you're reading this, I never got more info. You're on your own, kid.
    static const DestinyPartyMemberStates GroupMember = DestinyPartyMemberStates(4);
    ///PartyLeader = 8
    /// This person is the party leader.
    static const DestinyPartyMemberStates PartyLeader = DestinyPartyMemberStates(8);

    int get value {
        return _value;
    }

    bool contains(DestinyPartyMemberStates childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyPartyMemberStates item){
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