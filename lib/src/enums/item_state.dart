/// A flags enumeration/bitmask where each bit represents a different possible state that the item can be in that may effect how the item is displayed to the user and what actions can be performed against it.
class ItemState {
    const ItemState(this._value);
    factory ItemState.fromJson(int numValue) => ItemState(numValue);
    
    final int _value;
    
    ///None = 0
    static const ItemState None = ItemState(0);
    ///Locked = 1
    /// If this bit is set, the item has been "locked" by the user and cannot be deleted. You may want to represent this visually with a "lock" icon.
    static const ItemState Locked = ItemState(1);
    ///Tracked = 2
    /// If this bit is set, the item is a quest that's being tracked by the user. You may want a visual indicator to show that this is a tracked quest.
    static const ItemState Tracked = ItemState(2);
    ///Masterwork = 4
    /// If this bit is set, the item has a Masterwork plug inserted. This usually coincides with having a special "glowing" effect applied to the item's icon.
    static const ItemState Masterwork = ItemState(4);
    ///Crafted = 8
    /// If this bit is set, the item has been 'crafted' by the player. You may want to represent this visually with a "crafted" icon overlay.
    static const ItemState Crafted = ItemState(8);
    ///HighlightedObjective = 16
    /// If this bit is set, the item has a 'highlighted' objective. You may want to represent this with an orange-red icon border color.
    static const ItemState HighlightedObjective = ItemState(16);

    int get value {
        return _value;
    }

    bool contains(ItemState childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (ItemState item){
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