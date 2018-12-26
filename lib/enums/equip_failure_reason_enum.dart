class EquipFailureReason {
  EquipFailureReason._();
  static const int none = 0;
  static const int itemUnequippable = 1;
  static const int itemUniqueEquipRestricted = 2;
  static const int itemFailedUnlockCheck = 4;
  static const int itemFailedLevelCheck = 8;
  static const int itemNotOnCharacter = 16;
}