import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityModifierConnotation {
  ///Neutral = 0
  @JsonValue(0)
  Neutral,
  ///Positive = 1
  @JsonValue(1)
  Positive,
  ///Negative = 2
  @JsonValue(2)
  Negative,
  ///Affix = 3
  @JsonValue(3)
  Affix,
  ///Informational = 4
  @JsonValue(4)
  Informational,
  ///Reward = 5
  @JsonValue(5)
  Reward,
  ///Event = 6
  @JsonValue(6)
  Event,
  ///Count = 7
  @JsonValue(7)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityModifierConnotationExtension on DestinyActivityModifierConnotation{
  int? get value {
    if (_$DestinyActivityModifierConnotationEnumMap.containsKey(this)){
      return _$DestinyActivityModifierConnotationEnumMap[this];
    }
    return null;
  }
}

DestinyActivityModifierConnotation? decodeDestinyActivityModifierConnotation (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityModifierConnotationValueMap.containsKey(value)){
    return _$DestinyActivityModifierConnotationValueMap[value];
  }

  return DestinyActivityModifierConnotation.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityModifierConnotation (DestinyActivityModifierConnotation? value) {
  return value?.value;
}

const Map<DestinyActivityModifierConnotation, int> _$DestinyActivityModifierConnotationEnumMap = <DestinyActivityModifierConnotation, int>{
    DestinyActivityModifierConnotation.Neutral:0,
    DestinyActivityModifierConnotation.Positive:1,
    DestinyActivityModifierConnotation.Negative:2,
    DestinyActivityModifierConnotation.Affix:3,
    DestinyActivityModifierConnotation.Informational:4,
    DestinyActivityModifierConnotation.Reward:5,
    DestinyActivityModifierConnotation.Event:6,
    DestinyActivityModifierConnotation.Count:7,
};
const Map<int, DestinyActivityModifierConnotation> _$DestinyActivityModifierConnotationValueMap = <int, DestinyActivityModifierConnotation>{
    0:DestinyActivityModifierConnotation.Neutral,
    1:DestinyActivityModifierConnotation.Positive,
    2:DestinyActivityModifierConnotation.Negative,
    3:DestinyActivityModifierConnotation.Affix,
    4:DestinyActivityModifierConnotation.Informational,
    5:DestinyActivityModifierConnotation.Reward,
    6:DestinyActivityModifierConnotation.Event,
    7:DestinyActivityModifierConnotation.Count,
};