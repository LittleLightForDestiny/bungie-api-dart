class EquippingItemBlockAttributes {
    const EquippingItemBlockAttributes(this._value);
    factory EquippingItemBlockAttributes.fromJson(int numValue) => EquippingItemBlockAttributes(numValue);
    
    final int _value;
    
    ///None = 0
    static const EquippingItemBlockAttributes None = EquippingItemBlockAttributes(0);
    ///EquipOnAcquire = 1
    static const EquippingItemBlockAttributes EquipOnAcquire = EquippingItemBlockAttributes(1);

    int get value {
        return _value;
    }

    bool contains(EquippingItemBlockAttributes childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (EquippingItemBlockAttributes item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is EquippingItemBlockAttributes){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}