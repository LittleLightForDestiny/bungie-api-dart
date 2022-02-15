import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityDifficultyTier {
  ///Trivial = 0
  @JsonValue(0)
  Trivial,
  ///Easy = 1
  @JsonValue(1)
  Easy,
  ///Normal = 2
  @JsonValue(2)
  Normal,
  ///Challenging = 3
  @JsonValue(3)
  Challenging,
  ///Hard = 4
  @JsonValue(4)
  Hard,
  ///Brave = 5
  @JsonValue(5)
  Brave,
  ///AlmostImpossible = 6
  @JsonValue(6)
  AlmostImpossible,
  ///Impossible = 7
  @JsonValue(7)
  Impossible,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityDifficultyTierExtension on DestinyActivityDifficultyTier{
  int? get value {
    if (_$DestinyActivityDifficultyTierEnumMap.containsKey(this)){
      return _$DestinyActivityDifficultyTierEnumMap[this];
    }
    return null;
  }
}

DestinyActivityDifficultyTier? decodeDestinyActivityDifficultyTier (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityDifficultyTierValueMap.containsKey(value)){
    return _$DestinyActivityDifficultyTierValueMap[value];
  }

  return DestinyActivityDifficultyTier.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityDifficultyTier (DestinyActivityDifficultyTier? value) {
  return value?.value;
}

const Map<DestinyActivityDifficultyTier, int> _$DestinyActivityDifficultyTierEnumMap = <DestinyActivityDifficultyTier, int>{
    DestinyActivityDifficultyTier.Trivial:0,
    DestinyActivityDifficultyTier.Easy:1,
    DestinyActivityDifficultyTier.Normal:2,
    DestinyActivityDifficultyTier.Challenging:3,
    DestinyActivityDifficultyTier.Hard:4,
    DestinyActivityDifficultyTier.Brave:5,
    DestinyActivityDifficultyTier.AlmostImpossible:6,
    DestinyActivityDifficultyTier.Impossible:7,
};
const Map<int, DestinyActivityDifficultyTier> _$DestinyActivityDifficultyTierValueMap = <int, DestinyActivityDifficultyTier>{
    0:DestinyActivityDifficultyTier.Trivial,
    1:DestinyActivityDifficultyTier.Easy,
    2:DestinyActivityDifficultyTier.Normal,
    3:DestinyActivityDifficultyTier.Challenging,
    4:DestinyActivityDifficultyTier.Hard,
    5:DestinyActivityDifficultyTier.Brave,
    6:DestinyActivityDifficultyTier.AlmostImpossible,
    7:DestinyActivityDifficultyTier.Impossible,
};