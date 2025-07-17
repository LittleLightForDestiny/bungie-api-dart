import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityDifficultyId {
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
  ///Count = 8
  @JsonValue(8)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityDifficultyIdExtension on DestinyActivityDifficultyId{
  int? get value {
    if (_$DestinyActivityDifficultyIdEnumMap.containsKey(this)){
      return _$DestinyActivityDifficultyIdEnumMap[this];
    }
    return null;
  }
}

DestinyActivityDifficultyId? decodeDestinyActivityDifficultyId (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityDifficultyIdValueMap.containsKey(value)){
    return _$DestinyActivityDifficultyIdValueMap[value];
  }

  return DestinyActivityDifficultyId.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityDifficultyId (DestinyActivityDifficultyId? value) {
  return value?.value;
}

const Map<DestinyActivityDifficultyId, int> _$DestinyActivityDifficultyIdEnumMap = <DestinyActivityDifficultyId, int>{
    DestinyActivityDifficultyId.Trivial:0,
    DestinyActivityDifficultyId.Easy:1,
    DestinyActivityDifficultyId.Normal:2,
    DestinyActivityDifficultyId.Challenging:3,
    DestinyActivityDifficultyId.Hard:4,
    DestinyActivityDifficultyId.Brave:5,
    DestinyActivityDifficultyId.AlmostImpossible:6,
    DestinyActivityDifficultyId.Impossible:7,
    DestinyActivityDifficultyId.Count:8,
};
const Map<int, DestinyActivityDifficultyId> _$DestinyActivityDifficultyIdValueMap = <int, DestinyActivityDifficultyId>{
    0:DestinyActivityDifficultyId.Trivial,
    1:DestinyActivityDifficultyId.Easy,
    2:DestinyActivityDifficultyId.Normal,
    3:DestinyActivityDifficultyId.Challenging,
    4:DestinyActivityDifficultyId.Hard,
    5:DestinyActivityDifficultyId.Brave,
    6:DestinyActivityDifficultyId.AlmostImpossible,
    7:DestinyActivityDifficultyId.Impossible,
    8:DestinyActivityDifficultyId.Count,
};