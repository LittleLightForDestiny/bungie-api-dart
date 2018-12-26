class ApplicationScopes {
  ApplicationScopes._();
  static const int readBasicUserProfile = 1;
  static const int readGroups = 2;
  static const int writeGroups = 4;
  static const int adminGroups = 8;
  static const int bnetWrite = 16;
  static const int moveEquipDestinyItems = 32;
  static const int readDestinyInventoryAndVault = 64;
  static const int readUserData = 128;
  static const int editUserData = 256;
  static const int readDestinyVendorsAndAdvisors = 512;
  static const int readAndApplyTokens = 1024;
  static const int advancedWriteActions = 2048;
}