import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorFilter {
  ///None = 0
  @JsonValue(0)
  None,
  ///ApiPurchasable = 1
  @JsonValue(1)
  ApiPurchasable,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorFilterExtension on DestinyVendorFilter{
  int get value {
    switch(this){
      case DestinyVendorFilter.None:
        return 0;
      case DestinyVendorFilter.ApiPurchasable:
        return 1;
      default:
        return null;
    }
  }
}