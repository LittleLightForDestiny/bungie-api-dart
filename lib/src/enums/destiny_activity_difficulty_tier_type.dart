import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityDifficultyTierType {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///Training = 1
  @JsonValue(1)
  Training,
  ///Count = 2
  @JsonValue(2)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityDifficultyTierTypeExtension on DestinyActivityDifficultyTierType{
  int? get value {
    if (_$DestinyActivityDifficultyTierTypeEnumMap.containsKey(this)){
      return _$DestinyActivityDifficultyTierTypeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityDifficultyTierType? decodeDestinyActivityDifficultyTierType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityDifficultyTierTypeValueMap.containsKey(value)){
    return _$DestinyActivityDifficultyTierTypeValueMap[value];
  }

  return DestinyActivityDifficultyTierType.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityDifficultyTierType (DestinyActivityDifficultyTierType? value) {
  return value?.value;
}

const Map<DestinyActivityDifficultyTierType, int> _$DestinyActivityDifficultyTierTypeEnumMap = <DestinyActivityDifficultyTierType, int>{
    DestinyActivityDifficultyTierType.Default:0,
    DestinyActivityDifficultyTierType.Training:1,
    DestinyActivityDifficultyTierType.Count:2,
};
const Map<int, DestinyActivityDifficultyTierType> _$DestinyActivityDifficultyTierTypeValueMap = <int, DestinyActivityDifficultyTierType>{
    0:DestinyActivityDifficultyTierType.Default,
    1:DestinyActivityDifficultyTierType.Training,
    2:DestinyActivityDifficultyTierType.Count,
};