import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityModifierDisplayCategory {
  ///None = 0
  @JsonValue(0)
  None,
  ///ModeRules = 1
  @JsonValue(1)
  ModeRules,
  ///SelfBuildcraft = 2
  @JsonValue(2)
  SelfBuildcraft,
  ///EnemyAdjustment = 3
  @JsonValue(3)
  EnemyAdjustment,
  ///EnemyBuildcraft = 4
  @JsonValue(4)
  EnemyBuildcraft,
  ///Seasonal = 5
  @JsonValue(5)
  Seasonal,
  ///Fun = 6
  @JsonValue(6)
  Fun,
  ///Count = 7
  @JsonValue(7)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityModifierDisplayCategoryExtension on DestinyActivityModifierDisplayCategory{
  int? get value {
    if (_$DestinyActivityModifierDisplayCategoryEnumMap.containsKey(this)){
      return _$DestinyActivityModifierDisplayCategoryEnumMap[this];
    }
    return null;
  }
}

DestinyActivityModifierDisplayCategory? decodeDestinyActivityModifierDisplayCategory (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityModifierDisplayCategoryValueMap.containsKey(value)){
    return _$DestinyActivityModifierDisplayCategoryValueMap[value];
  }

  return DestinyActivityModifierDisplayCategory.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityModifierDisplayCategory (DestinyActivityModifierDisplayCategory? value) {
  return value?.value;
}

const Map<DestinyActivityModifierDisplayCategory, int> _$DestinyActivityModifierDisplayCategoryEnumMap = <DestinyActivityModifierDisplayCategory, int>{
    DestinyActivityModifierDisplayCategory.None:0,
    DestinyActivityModifierDisplayCategory.ModeRules:1,
    DestinyActivityModifierDisplayCategory.SelfBuildcraft:2,
    DestinyActivityModifierDisplayCategory.EnemyAdjustment:3,
    DestinyActivityModifierDisplayCategory.EnemyBuildcraft:4,
    DestinyActivityModifierDisplayCategory.Seasonal:5,
    DestinyActivityModifierDisplayCategory.Fun:6,
    DestinyActivityModifierDisplayCategory.Count:7,
};
const Map<int, DestinyActivityModifierDisplayCategory> _$DestinyActivityModifierDisplayCategoryValueMap = <int, DestinyActivityModifierDisplayCategory>{
    0:DestinyActivityModifierDisplayCategory.None,
    1:DestinyActivityModifierDisplayCategory.ModeRules,
    2:DestinyActivityModifierDisplayCategory.SelfBuildcraft,
    3:DestinyActivityModifierDisplayCategory.EnemyAdjustment,
    4:DestinyActivityModifierDisplayCategory.EnemyBuildcraft,
    5:DestinyActivityModifierDisplayCategory.Seasonal,
    6:DestinyActivityModifierDisplayCategory.Fun,
    7:DestinyActivityModifierDisplayCategory.Count,
};