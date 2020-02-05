class VendorItemStatus {
    const VendorItemStatus(this._value);
    factory VendorItemStatus.fromJson(int numValue) => VendorItemStatus(numValue);
    
    final int _value;
    
    ///Success = 0
    static const VendorItemStatus Success = VendorItemStatus(0);
    ///NoInventorySpace = 1
    static const VendorItemStatus NoInventorySpace = VendorItemStatus(1);
    ///NoFunds = 2
    static const VendorItemStatus NoFunds = VendorItemStatus(2);
    ///NoProgression = 4
    static const VendorItemStatus NoProgression = VendorItemStatus(4);
    ///NoUnlock = 8
    static const VendorItemStatus NoUnlock = VendorItemStatus(8);
    ///NoQuantity = 16
    static const VendorItemStatus NoQuantity = VendorItemStatus(16);
    ///OutsidePurchaseWindow = 32
    static const VendorItemStatus OutsidePurchaseWindow = VendorItemStatus(32);
    ///NotAvailable = 64
    static const VendorItemStatus NotAvailable = VendorItemStatus(64);
    ///UniquenessViolation = 128
    static const VendorItemStatus UniquenessViolation = VendorItemStatus(128);
    ///UnknownError = 256
    static const VendorItemStatus UnknownError = VendorItemStatus(256);
    ///AlreadySelling = 512
    static const VendorItemStatus AlreadySelling = VendorItemStatus(512);
    ///Unsellable = 1024
    static const VendorItemStatus Unsellable = VendorItemStatus(1024);
    ///SellingInhibited = 2048
    static const VendorItemStatus SellingInhibited = VendorItemStatus(2048);
    ///AlreadyOwned = 4096
    static const VendorItemStatus AlreadyOwned = VendorItemStatus(4096);
    ///DisplayOnly = 8192
    static const VendorItemStatus DisplayOnly = VendorItemStatus(8192);

    int get value {
        return _value;
    }

    bool contains(VendorItemStatus childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (VendorItemStatus item){
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