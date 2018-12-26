class VendorItemStatus {
  VendorItemStatus._();
  static const int success = 0;
  static const int noInventorySpace = 1;
  static const int noFunds = 2;
  static const int noProgression = 4;
  static const int noUnlock = 8;
  static const int noQuantity = 16;
  static const int outsidePurchaseWindow = 32;
  static const int notAvailable = 64;
  static const int uniquenessViolation = 128;
  static const int unknownError = 256;
  static const int alreadySelling = 512;
  static const int unsellable = 1024;
  static const int sellingInhibited = 2048;
  static const int alreadyOwned = 4096;
  static const int displayOnly = 8192;
}