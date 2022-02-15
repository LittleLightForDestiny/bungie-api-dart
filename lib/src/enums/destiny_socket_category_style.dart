import 'package:json_annotation/json_annotation.dart';

enum DestinySocketCategoryStyle {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Reusable = 1
  @JsonValue(1)
  Reusable,
  ///Consumable = 2
  @JsonValue(2)
  Consumable,
  ///Unlockable = 3
  @JsonValue(3)
  Unlockable,
  ///Intrinsic = 4
  @JsonValue(4)
  Intrinsic,
  ///EnergyMeter = 5
  @JsonValue(5)
  EnergyMeter,
  ///LargePerk = 6
  @JsonValue(6)
  LargePerk,
  ///Abilities = 7
  @JsonValue(7)
  Abilities,
  ///Supers = 8
  @JsonValue(8)
  Supers,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinySocketCategoryStyleExtension on DestinySocketCategoryStyle{
  int? get value {
    if (_$DestinySocketCategoryStyleEnumMap.containsKey(this)){
      return _$DestinySocketCategoryStyleEnumMap[this];
    }
    return null;
  }
}

DestinySocketCategoryStyle? decodeDestinySocketCategoryStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinySocketCategoryStyleValueMap.containsKey(value)){
    return _$DestinySocketCategoryStyleValueMap[value];
  }

  return DestinySocketCategoryStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinySocketCategoryStyle (DestinySocketCategoryStyle? value) {
  return value?.value;
}

const Map<DestinySocketCategoryStyle, int> _$DestinySocketCategoryStyleEnumMap = <DestinySocketCategoryStyle, int>{
    DestinySocketCategoryStyle.Unknown:0,
    DestinySocketCategoryStyle.Reusable:1,
    DestinySocketCategoryStyle.Consumable:2,
    DestinySocketCategoryStyle.Unlockable:3,
    DestinySocketCategoryStyle.Intrinsic:4,
    DestinySocketCategoryStyle.EnergyMeter:5,
    DestinySocketCategoryStyle.LargePerk:6,
    DestinySocketCategoryStyle.Abilities:7,
    DestinySocketCategoryStyle.Supers:8,
};
const Map<int, DestinySocketCategoryStyle> _$DestinySocketCategoryStyleValueMap = <int, DestinySocketCategoryStyle>{
    0:DestinySocketCategoryStyle.Unknown,
    1:DestinySocketCategoryStyle.Reusable,
    2:DestinySocketCategoryStyle.Consumable,
    3:DestinySocketCategoryStyle.Unlockable,
    4:DestinySocketCategoryStyle.Intrinsic,
    5:DestinySocketCategoryStyle.EnergyMeter,
    6:DestinySocketCategoryStyle.LargePerk,
    7:DestinySocketCategoryStyle.Abilities,
    8:DestinySocketCategoryStyle.Supers,
};