class IgnoreStatus {
  IgnoreStatus._();
  static const int NotIgnored = 0;
  static const int IgnoredUser = 1;
  static const int IgnoredGroup = 2;
  static const int IgnoredByGroup = 4;
  static const int IgnoredPost = 8;
  static const int IgnoredTag = 16;
  static const int IgnoredGlobal = 32;
}
