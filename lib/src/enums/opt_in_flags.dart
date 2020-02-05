class OptInFlags {
    const OptInFlags(this._value);
    factory OptInFlags.fromJson(int numValue) => OptInFlags(numValue);
    
    final int _value;
    
    ///None = 0
    static const OptInFlags None = OptInFlags(0);
    ///Newsletter = 1
    static const OptInFlags Newsletter = OptInFlags(1);
    ///System = 2
    static const OptInFlags System = OptInFlags(2);
    ///Marketing = 4
    static const OptInFlags Marketing = OptInFlags(4);
    ///UserResearch = 8
    static const OptInFlags UserResearch = OptInFlags(8);
    ///CustomerService = 16
    static const OptInFlags CustomerService = OptInFlags(16);
    ///Social = 32
    static const OptInFlags Social = OptInFlags(32);

    int get value {
        return _value;
    }

    bool contains(OptInFlags childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (OptInFlags item){
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