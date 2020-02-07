/// I know this doesn't look like a Flags Enumeration/bitmask right now, but I assure you it is. This is the possible states that a Presentation Node can be in, and it is almost certain that its potential states will increase in the future. So don't treat it like a straight up enumeration.
class DestinyPresentationNodeState {
    const DestinyPresentationNodeState(this._value);
    factory DestinyPresentationNodeState.fromJson(int numValue) => DestinyPresentationNodeState(numValue);
    
    final int _value;
    
    ///None = 0
    static const DestinyPresentationNodeState None = DestinyPresentationNodeState(0);
    ///Invisible = 1
    /// If this is set, the game recommends that you not show this node. But you know your life, do what you've got to do.
    static const DestinyPresentationNodeState Invisible = DestinyPresentationNodeState(1);
    ///Obscured = 2
    /// Turns out Presentation Nodes can also be obscured. If they are, this is set.
    static const DestinyPresentationNodeState Obscured = DestinyPresentationNodeState(2);

    int get value {
        return _value;
    }

    bool contains(DestinyPresentationNodeState childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyPresentationNodeState item){
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