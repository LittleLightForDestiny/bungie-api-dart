class EquipFailureReason {
  EquipFailureReason._();
  static const int None = 0;
  static const int ItemUnequippable = 1;
  static const int ItemUniqueEquipRestricted = 2;
  static const int ItemFailedUnlockCheck = 4;
  static const int ItemFailedLevelCheck = 8;
  static const int ItemNotOnCharacter = 16;
}
