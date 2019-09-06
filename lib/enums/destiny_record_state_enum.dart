class DestinyRecordState {
  DestinyRecordState._();
  static const int None = 0;
  static const int RecordRedeemed = 1;
  static const int RewardUnavailable = 2;
  static const int ObjectiveNotCompleted = 4;
  static const int Obscured = 8;
  static const int Invisible = 16;
  static const int EntitlementUnowned = 32;
  static const int CanEquipTitle = 64;
}
