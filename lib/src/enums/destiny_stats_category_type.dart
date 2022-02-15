import 'package:json_annotation/json_annotation.dart';

enum DestinyStatsCategoryType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Kills = 1
  @JsonValue(1)
  Kills,
  ///Assists = 2
  @JsonValue(2)
  Assists,
  ///Deaths = 3
  @JsonValue(3)
  Deaths,
  ///Criticals = 4
  @JsonValue(4)
  Criticals,
  ///KDa = 5
  @JsonValue(5)
  KDa,
  ///KD = 6
  @JsonValue(6)
  KD,
  ///Score = 7
  @JsonValue(7)
  Score,
  ///Entered = 8
  @JsonValue(8)
  Entered,
  ///TimePlayed = 9
  @JsonValue(9)
  TimePlayed,
  ///MedalWins = 10
  @JsonValue(10)
  MedalWins,
  ///MedalGame = 11
  @JsonValue(11)
  MedalGame,
  ///MedalSpecialKills = 12
  @JsonValue(12)
  MedalSpecialKills,
  ///MedalSprees = 13
  @JsonValue(13)
  MedalSprees,
  ///MedalMultiKills = 14
  @JsonValue(14)
  MedalMultiKills,
  ///MedalAbilities = 15
  @JsonValue(15)
  MedalAbilities,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatsCategoryTypeExtension on DestinyStatsCategoryType{
  int? get value {
    if (_$DestinyStatsCategoryTypeEnumMap.containsKey(this)){
      return _$DestinyStatsCategoryTypeEnumMap[this];
    }
    return null;
  }
}

DestinyStatsCategoryType? decodeDestinyStatsCategoryType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyStatsCategoryTypeValueMap.containsKey(value)){
    return _$DestinyStatsCategoryTypeValueMap[value];
  }

  return DestinyStatsCategoryType.ProtectedInvalidEnumValue;
}

int? encodeDestinyStatsCategoryType (DestinyStatsCategoryType? value) {
  return value?.value;
}

const Map<DestinyStatsCategoryType, int> _$DestinyStatsCategoryTypeEnumMap = <DestinyStatsCategoryType, int>{
    DestinyStatsCategoryType.None:0,
    DestinyStatsCategoryType.Kills:1,
    DestinyStatsCategoryType.Assists:2,
    DestinyStatsCategoryType.Deaths:3,
    DestinyStatsCategoryType.Criticals:4,
    DestinyStatsCategoryType.KDa:5,
    DestinyStatsCategoryType.KD:6,
    DestinyStatsCategoryType.Score:7,
    DestinyStatsCategoryType.Entered:8,
    DestinyStatsCategoryType.TimePlayed:9,
    DestinyStatsCategoryType.MedalWins:10,
    DestinyStatsCategoryType.MedalGame:11,
    DestinyStatsCategoryType.MedalSpecialKills:12,
    DestinyStatsCategoryType.MedalSprees:13,
    DestinyStatsCategoryType.MedalMultiKills:14,
    DestinyStatsCategoryType.MedalAbilities:15,
};
const Map<int, DestinyStatsCategoryType> _$DestinyStatsCategoryTypeValueMap = <int, DestinyStatsCategoryType>{
    0:DestinyStatsCategoryType.None,
    1:DestinyStatsCategoryType.Kills,
    2:DestinyStatsCategoryType.Assists,
    3:DestinyStatsCategoryType.Deaths,
    4:DestinyStatsCategoryType.Criticals,
    5:DestinyStatsCategoryType.KDa,
    6:DestinyStatsCategoryType.KD,
    7:DestinyStatsCategoryType.Score,
    8:DestinyStatsCategoryType.Entered,
    9:DestinyStatsCategoryType.TimePlayed,
    10:DestinyStatsCategoryType.MedalWins,
    11:DestinyStatsCategoryType.MedalGame,
    12:DestinyStatsCategoryType.MedalSpecialKills,
    13:DestinyStatsCategoryType.MedalSprees,
    14:DestinyStatsCategoryType.MedalMultiKills,
    15:DestinyStatsCategoryType.MedalAbilities,
};