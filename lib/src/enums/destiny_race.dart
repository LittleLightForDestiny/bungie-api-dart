import 'package:json_annotation/json_annotation.dart';

enum DestinyRace {
  ///Human = 0
  @JsonValue(0)
  Human,
  ///Awoken = 1
  @JsonValue(1)
  Awoken,
  ///Exo = 2
  @JsonValue(2)
  Exo,
  ///Unknown = 3
  @JsonValue(3)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRaceExtension on DestinyRace{
  int? get value {
    if (_$DestinyRaceEnumMap.containsKey(this)){
      return _$DestinyRaceEnumMap[this];
    }
    return null;
  }
}

DestinyRace? decodeDestinyRace (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyRaceValueMap.containsKey(value)){
    return _$DestinyRaceValueMap[value];
  }

  return DestinyRace.ProtectedInvalidEnumValue;
}

int? encodeDestinyRace (DestinyRace? value) {
  return value?.value;
}

const Map<DestinyRace, int> _$DestinyRaceEnumMap = <DestinyRace, int>{
    DestinyRace.Human:0,
    DestinyRace.Awoken:1,
    DestinyRace.Exo:2,
    DestinyRace.Unknown:3,
};
const Map<int, DestinyRace> _$DestinyRaceValueMap = <int, DestinyRace>{
    0:DestinyRace.Human,
    1:DestinyRace.Awoken,
    2:DestinyRace.Exo,
    3:DestinyRace.Unknown,
};