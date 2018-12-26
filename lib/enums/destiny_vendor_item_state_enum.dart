class DestinyVendorItemState {
  DestinyVendorItemState._();
  static const int none = 0;
  static const int incomplete = 1;
  static const int rewardAvailable = 2;
  static const int complete = 4;
  static const int new = 8;
  static const int featured = 16;
  static const int ending = 32;
  static const int onSale = 64;
  static const int owned = 128;
  static const int wideView = 256;
  static const int nexusAttention = 512;
}