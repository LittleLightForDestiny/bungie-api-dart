class IgnoreStatus {
  IgnoreStatus._();
  static const int notIgnored = 0;
  static const int ignoredUser = 1;
  static const int ignoredGroup = 2;
  static const int ignoredByGroup = 4;
  static const int ignoredPost = 8;
  static const int ignoredTag = 16;
  static const int ignoredGlobal = 32;
}