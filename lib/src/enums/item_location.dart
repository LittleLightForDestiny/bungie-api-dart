import 'package:json_annotation/json_annotation.dart';

enum ItemLocation {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Inventory = 1
  @JsonValue(1)
  Inventory,
  ///Vault = 2
  @JsonValue(2)
  Vault,
  ///Vendor = 3
  @JsonValue(3)
  Vendor,
  ///Postmaster = 4
  @JsonValue(4)
  Postmaster,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ItemLocationExtension on ItemLocation{
  int? get value {
    if (_$ItemLocationEnumMap.containsKey(this)){
      return _$ItemLocationEnumMap[this];
    }
    return null;
  }
}

ItemLocation? decodeItemLocation (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ItemLocationValueMap.containsKey(value)){
    return _$ItemLocationValueMap[value];
  }

  return ItemLocation.ProtectedInvalidEnumValue;
}

int? encodeItemLocation (ItemLocation? value) {
  return value?.value;
}

const Map<ItemLocation, int> _$ItemLocationEnumMap = <ItemLocation, int>{
    ItemLocation.Unknown:0,
    ItemLocation.Inventory:1,
    ItemLocation.Vault:2,
    ItemLocation.Vendor:3,
    ItemLocation.Postmaster:4,
};
const Map<int, ItemLocation> _$ItemLocationValueMap = <int, ItemLocation>{
    0:ItemLocation.Unknown,
    1:ItemLocation.Inventory,
    2:ItemLocation.Vault,
    3:ItemLocation.Vendor,
    4:ItemLocation.Postmaster,
};