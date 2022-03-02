import 'package:json_annotation/json_annotation.dart';

enum DestinyObjectiveUiStyle {
  ///None = 0
  @JsonValue(0)
  None,
  ///Highlighted = 1
  @JsonValue(1)
  Highlighted,
  ///CraftingWeaponLevel = 2
  @JsonValue(2)
  CraftingWeaponLevel,
  ///CraftingWeaponLevelProgress = 3
  @JsonValue(3)
  CraftingWeaponLevelProgress,
  ///CraftingWeaponTimestamp = 4
  @JsonValue(4)
  CraftingWeaponTimestamp,
  ///CraftingMementos = 5
  @JsonValue(5)
  CraftingMementos,
  ///CraftingMementoTitle = 6
  @JsonValue(6)
  CraftingMementoTitle,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyObjectiveUiStyleExtension on DestinyObjectiveUiStyle{
  int? get value {
    if (_$DestinyObjectiveUiStyleEnumMap.containsKey(this)){
      return _$DestinyObjectiveUiStyleEnumMap[this];
    }
    return null;
  }
}

DestinyObjectiveUiStyle? decodeDestinyObjectiveUiStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyObjectiveUiStyleValueMap.containsKey(value)){
    return _$DestinyObjectiveUiStyleValueMap[value];
  }

  return DestinyObjectiveUiStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyObjectiveUiStyle (DestinyObjectiveUiStyle? value) {
  return value?.value;
}

const Map<DestinyObjectiveUiStyle, int> _$DestinyObjectiveUiStyleEnumMap = <DestinyObjectiveUiStyle, int>{
    DestinyObjectiveUiStyle.None:0,
    DestinyObjectiveUiStyle.Highlighted:1,
    DestinyObjectiveUiStyle.CraftingWeaponLevel:2,
    DestinyObjectiveUiStyle.CraftingWeaponLevelProgress:3,
    DestinyObjectiveUiStyle.CraftingWeaponTimestamp:4,
    DestinyObjectiveUiStyle.CraftingMementos:5,
    DestinyObjectiveUiStyle.CraftingMementoTitle:6,
};
const Map<int, DestinyObjectiveUiStyle> _$DestinyObjectiveUiStyleValueMap = <int, DestinyObjectiveUiStyle>{
    0:DestinyObjectiveUiStyle.None,
    1:DestinyObjectiveUiStyle.Highlighted,
    2:DestinyObjectiveUiStyle.CraftingWeaponLevel,
    3:DestinyObjectiveUiStyle.CraftingWeaponLevelProgress,
    4:DestinyObjectiveUiStyle.CraftingWeaponTimestamp,
    5:DestinyObjectiveUiStyle.CraftingMementos,
    6:DestinyObjectiveUiStyle.CraftingMementoTitle,
};