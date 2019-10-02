class DestinyJoinClosedReasons {
  DestinyJoinClosedReasons._();
  static const int None = 0;
  static const int InMatchmaking = 1;
  static const int Loading = 2;
  static const int SoloMode = 4;
  static const int InternalReasons = 8;
  static const int DisallowedByGameState = 16;
  static const int Offline = 32768;
}