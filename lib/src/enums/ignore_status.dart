class IgnoreStatus {
    const IgnoreStatus(this._value);
    factory IgnoreStatus.fromJson(int numValue) => IgnoreStatus(numValue);
    
    final int _value;
    
    ///NotIgnored = 0
    static const IgnoreStatus NotIgnored = IgnoreStatus(0);
    ///IgnoredUser = 1
    static const IgnoreStatus IgnoredUser = IgnoreStatus(1);
    ///IgnoredGroup = 2
    static const IgnoreStatus IgnoredGroup = IgnoreStatus(2);
    ///IgnoredByGroup = 4
    static const IgnoreStatus IgnoredByGroup = IgnoreStatus(4);
    ///IgnoredPost = 8
    static const IgnoreStatus IgnoredPost = IgnoreStatus(8);
    ///IgnoredTag = 16
    static const IgnoreStatus IgnoredTag = IgnoreStatus(16);
    ///IgnoredGlobal = 32
    static const IgnoreStatus IgnoredGlobal = IgnoreStatus(32);

    int get value {
        return _value;
    }

    bool contains(IgnoreStatus childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (IgnoreStatus item){
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