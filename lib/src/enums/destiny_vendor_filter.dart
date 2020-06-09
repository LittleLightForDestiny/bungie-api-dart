import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorFilter {
  ///None = 0
  @JsonValue(0)
  None,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorFilterExtension on DestinyVendorFilter{
  int get value {
    switch(this){
      case DestinyVendorFilter.None:
        return 0;
      default:
        return null;
    }
  }
}