class DestinyCollectibleState {
  DestinyCollectibleState._();
  static const int None = 0;
  static const int NotAcquired = 1;
  static const int Obscured = 2;
  static const int Invisible = 4;
  static const int CannotAffordMaterialRequirements = 8;
  static const int InventorySpaceUnavailable = 16;
  static const int UniquenessViolation = 32;
  static const int PurchaseDisabled = 64;
}
