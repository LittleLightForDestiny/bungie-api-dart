import 'package:json_annotation/json_annotation.dart';

enum VendorDisplayCategorySortOrder {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///SortByTier = 1
  @JsonValue(1)
  SortByTier,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension VendorDisplayCategorySortOrderExtension on VendorDisplayCategorySortOrder{
  int? get value {
    if (_$VendorDisplayCategorySortOrderEnumMap.containsKey(this)){
      return _$VendorDisplayCategorySortOrderEnumMap[this];
    }
    return null;
  }
}

VendorDisplayCategorySortOrder? decodeVendorDisplayCategorySortOrder (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$VendorDisplayCategorySortOrderValueMap.containsKey(value)){
    return _$VendorDisplayCategorySortOrderValueMap[value];
  }

  return VendorDisplayCategorySortOrder.ProtectedInvalidEnumValue;
}

int? encodeVendorDisplayCategorySortOrder (VendorDisplayCategorySortOrder? value) {
  return value?.value;
}

const Map<VendorDisplayCategorySortOrder, int> _$VendorDisplayCategorySortOrderEnumMap = <VendorDisplayCategorySortOrder, int>{
    VendorDisplayCategorySortOrder.Default:0,
    VendorDisplayCategorySortOrder.SortByTier:1,
};
const Map<int, VendorDisplayCategorySortOrder> _$VendorDisplayCategorySortOrderValueMap = <int, VendorDisplayCategorySortOrder>{
    0:VendorDisplayCategorySortOrder.Default,
    1:VendorDisplayCategorySortOrder.SortByTier,
};