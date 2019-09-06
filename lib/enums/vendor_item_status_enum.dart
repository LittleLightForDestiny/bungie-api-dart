class VendorItemStatus {
  VendorItemStatus._();
  static const int Success = 0;
  static const int NoInventorySpace = 1;
  static const int NoFunds = 2;
  static const int NoProgression = 4;
  static const int NoUnlock = 8;
  static const int NoQuantity = 16;
  static const int OutsidePurchaseWindow = 32;
  static const int NotAvailable = 64;
  static const int UniquenessViolation = 128;
  static const int UnknownError = 256;
  static const int AlreadySelling = 512;
  static const int Unsellable = 1024;
  static const int SellingInhibited = 2048;
  static const int AlreadyOwned = 4096;
  static const int DisplayOnly = 8192;
}
