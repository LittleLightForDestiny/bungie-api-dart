/// If the plug has a specific custom style, this enumeration will represent that style/those styles.
class PlugUiStyles {
    const PlugUiStyles(this._value);
    factory PlugUiStyles.fromJson(int numValue) => PlugUiStyles(numValue);
    
    final int _value;
    
    ///None = 0
    static const PlugUiStyles None = PlugUiStyles(0);
    ///Masterwork = 1
    static const PlugUiStyles Masterwork = PlugUiStyles(1);

    int get value {
        return _value;
    }

    bool contains(PlugUiStyles childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (PlugUiStyles item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is PlugUiStyles){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}