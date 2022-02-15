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
  int? get value {
    if (_$DestinyVendorFilterEnumMap.containsKey(this)){
      return _$DestinyVendorFilterEnumMap[this];
    }
    return null;
  }
}

DestinyVendorFilter? decodeDestinyVendorFilter (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyVendorFilterValueMap.containsKey(value)){
    return _$DestinyVendorFilterValueMap[value];
  }

  return DestinyVendorFilter.ProtectedInvalidEnumValue;
}

int? encodeDestinyVendorFilter (DestinyVendorFilter? value) {
  return value?.value;
}

const Map<DestinyVendorFilter, int> _$DestinyVendorFilterEnumMap = <DestinyVendorFilter, int>{
    DestinyVendorFilter.None:0,
    DestinyVendorFilter.ApiPurchasable:1,
};
const Map<int, DestinyVendorFilter> _$DestinyVendorFilterValueMap = <int, DestinyVendorFilter>{
    0:DestinyVendorFilter.None,
    1:DestinyVendorFilter.ApiPurchasable,
};