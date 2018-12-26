class DestinyRecordState {
  DestinyRecordState._();
  static const int none = 0;
  static const int recordRedeemed = 1;
  static const int rewardUnavailable = 2;
  static const int objectiveNotCompleted = 4;
  static const int obscured = 8;
  static const int invisible = 16;
  static const int entitlementUnowned = 32;
  static const int canEquipTitle = 64;
}