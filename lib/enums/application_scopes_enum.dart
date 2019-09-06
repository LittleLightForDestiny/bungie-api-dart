class ApplicationScopes {
  ApplicationScopes._();
  static const int ReadBasicUserProfile = 1;
  static const int ReadGroups = 2;
  static const int WriteGroups = 4;
  static const int AdminGroups = 8;
  static const int BnetWrite = 16;
  static const int MoveEquipDestinyItems = 32;
  static const int ReadDestinyInventoryAndVault = 64;
  static const int ReadUserData = 128;
  static const int EditUserData = 256;
  static const int ReadDestinyVendorsAndAdvisors = 512;
  static const int ReadAndApplyTokens = 1024;
  static const int AdvancedWriteActions = 2048;
}
