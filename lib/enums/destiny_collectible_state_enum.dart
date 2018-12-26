class DestinyCollectibleState {
  DestinyCollectibleState._();
  static const int none = 0;
  static const int notAcquired = 1;
  static const int obscured = 2;
  static const int invisible = 4;
  static const int cannotAffordMaterialRequirements = 8;
  static const int inventorySpaceUnavailable = 16;
  static const int uniquenessViolation = 32;
  static const int purchaseDisabled = 64;
}