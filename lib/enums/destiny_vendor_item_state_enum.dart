class DestinyVendorItemState {
  DestinyVendorItemState._();
  static const int None = 0;
  static const int Incomplete = 1;
  static const int RewardAvailable = 2;
  static const int Complete = 4;
  static const int New = 8;
  static const int Featured = 16;
  static const int Ending = 32;
  static const int OnSale = 64;
  static const int Owned = 128;
  static const int WideView = 256;
  static const int NexusAttention = 512;
}
