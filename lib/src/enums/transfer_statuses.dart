/// Whether you can transfer an item, and why not if you can't.
class TransferStatuses {
    const TransferStatuses(this._value);
    factory TransferStatuses.fromJson(int numValue) => TransferStatuses(numValue);
    
    final int _value;
    
    ///CanTransfer = 0
    /// The item can be transferred.
    static const TransferStatuses CanTransfer = TransferStatuses(0);
    ///ItemIsEquipped = 1
    /// You can't transfer the item because it is equipped on a character.
    static const TransferStatuses ItemIsEquipped = TransferStatuses(1);
    ///NotTransferrable = 2
    /// The item is defined as not transferrable in its DestinyInventoryItemDefinition.nonTransferrable property.
    static const TransferStatuses NotTransferrable = TransferStatuses(2);
    ///NoRoomInDestination = 4
    /// You could transfer the item, but the place you're trying to put it has run out of room! Check your remaining Vault and/or character space.
    static const TransferStatuses NoRoomInDestination = TransferStatuses(4);

    int get value {
        return _value;
    }

    bool contains(TransferStatuses childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (TransferStatuses item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is TransferStatuses){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}