class DestinyTalentNodeState {
  DestinyTalentNodeState._();
  static const int invalid = 0;
  static const int canUpgrade = 1;
  static const int noPoints = 2;
  static const int noPrerequisites = 3;
  static const int noSteps = 4;
  static const int noUnlock = 5;
  static const int noMaterial = 6;
  static const int noGridLevel = 7;
  static const int swappingLocked = 8;
  static const int mustSwap = 9;
  static const int complete = 10;
  static const int unknown = 11;
  static const int creationOnly = 12;
  static const int hidden = 13;
}