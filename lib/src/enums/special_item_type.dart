import 'package:json_annotation/json_annotation.dart';

enum SpecialItemType {
  ///None = 0
  @JsonValue(0)
  None,
  ///SpecialCurrency = 1
  @JsonValue(1)
  SpecialCurrency,
  ///Armor = 8
  @JsonValue(8)
  Armor,
  ///Weapon = 9
  @JsonValue(9)
  Weapon,
  ///Engram = 23
  @JsonValue(23)
  Engram,
  ///Consumable = 24
  @JsonValue(24)
  Consumable,
  ///ExchangeMaterial = 25
  @JsonValue(25)
  ExchangeMaterial,
  ///MissionReward = 27
  @JsonValue(27)
  MissionReward,
  ///Currency = 29
  @JsonValue(29)
  Currency,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension SpecialItemTypeExtension on SpecialItemType{
  int? get value {
    if (_$SpecialItemTypeEnumMap.containsKey(this)){
      return _$SpecialItemTypeEnumMap[this];
    }
    return null;
  }
}

SpecialItemType? decodeSpecialItemType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$SpecialItemTypeValueMap.containsKey(value)){
    return _$SpecialItemTypeValueMap[value];
  }

  return SpecialItemType.ProtectedInvalidEnumValue;
}

int? encodeSpecialItemType (SpecialItemType? value) {
  return value?.value;
}

const Map<SpecialItemType, int> _$SpecialItemTypeEnumMap = <SpecialItemType, int>{
    SpecialItemType.None:0,
    SpecialItemType.SpecialCurrency:1,
    SpecialItemType.Armor:8,
    SpecialItemType.Weapon:9,
    SpecialItemType.Engram:23,
    SpecialItemType.Consumable:24,
    SpecialItemType.ExchangeMaterial:25,
    SpecialItemType.MissionReward:27,
    SpecialItemType.Currency:29,
};
const Map<int, SpecialItemType> _$SpecialItemTypeValueMap = <int, SpecialItemType>{
    0:SpecialItemType.None,
    1:SpecialItemType.SpecialCurrency,
    8:SpecialItemType.Armor,
    9:SpecialItemType.Weapon,
    23:SpecialItemType.Engram,
    24:SpecialItemType.Consumable,
    25:SpecialItemType.ExchangeMaterial,
    27:SpecialItemType.MissionReward,
    29:SpecialItemType.Currency,
};