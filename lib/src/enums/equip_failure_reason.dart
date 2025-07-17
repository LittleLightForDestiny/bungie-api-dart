/// The reasons why an item cannot be equipped, if any. Many flags can be set, or "None" if
class EquipFailureReason {
    const EquipFailureReason(this._value);
    factory EquipFailureReason.fromJson(int numValue) => EquipFailureReason(numValue);
    
    final int _value;
    
    ///None = 0
    /// The item is/was able to be equipped.
    static const EquipFailureReason None = EquipFailureReason(0);
    ///ItemUnequippable = 1
    /// This is not the kind of item that can be equipped. Did you try equipping Glimmer or something?
    static const EquipFailureReason ItemUnequippable = EquipFailureReason(1);
    ///ItemUniqueEquipRestricted = 2
    /// This item is part of a "unique set", and you can't have more than one item of that same set type equipped at once. For instance, if you already have an Exotic Weapon equipped, you can't equip a second one in another weapon slot.
    static const EquipFailureReason ItemUniqueEquipRestricted = EquipFailureReason(2);
    ///ItemFailedUnlockCheck = 4
    /// This item has state-based gating that prevents it from being equipped in certain circumstances. For instance, an item might be for Warlocks only and you're a Titan, or it might require you to have beaten some special quest that you haven't beaten yet. Use the additional failure data passed on the item itself to get more information about what the specific failure case was (See DestinyInventoryItemDefinition and DestinyItemInstanceComponent)
    static const EquipFailureReason ItemFailedUnlockCheck = EquipFailureReason(4);
    ///ItemFailedLevelCheck = 8
    /// This item requires you to have reached a specific character level in order to equip it, and you haven't reached that level yet.
    static const EquipFailureReason ItemFailedLevelCheck = EquipFailureReason(8);
    ///ItemWrapped = 16
    /// This item is 'wrapped' and must be unwrapped before being equipped. NOTE: This value used to be called ItemNotOnCharacter but that is no longer accurate.
    static const EquipFailureReason ItemWrapped = EquipFailureReason(16);
    ///ItemNotLoaded = 32
    /// This item is not yet loaded and cannot be equipped yet.
    static const EquipFailureReason ItemNotLoaded = EquipFailureReason(32);
    ///ItemEquipBlocklisted = 64
    /// This item is block-listed and cannot be equipped.
    static const EquipFailureReason ItemEquipBlocklisted = EquipFailureReason(64);
    ///ItemLoadoutRequirementNotMet = 128
    /// This item does not meet the loadout requirements for the current activity
    static const EquipFailureReason ItemLoadoutRequirementNotMet = EquipFailureReason(128);

    int get value {
        return _value;
    }

    bool contains(EquipFailureReason childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (EquipFailureReason item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is EquipFailureReason){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}