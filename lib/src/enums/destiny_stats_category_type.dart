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
  int get value {
    switch(this){
      case DestinyStatsCategoryType.None:
        return 0;
      case DestinyStatsCategoryType.Kills:
        return 1;
      case DestinyStatsCategoryType.Assists:
        return 2;
      case DestinyStatsCategoryType.Deaths:
        return 3;
      case DestinyStatsCategoryType.Criticals:
        return 4;
      case DestinyStatsCategoryType.KDa:
        return 5;
      case DestinyStatsCategoryType.KD:
        return 6;
      case DestinyStatsCategoryType.Score:
        return 7;
      case DestinyStatsCategoryType.Entered:
        return 8;
      case DestinyStatsCategoryType.TimePlayed:
        return 9;
      case DestinyStatsCategoryType.MedalWins:
        return 10;
      case DestinyStatsCategoryType.MedalGame:
        return 11;
      case DestinyStatsCategoryType.MedalSpecialKills:
        return 12;
      case DestinyStatsCategoryType.MedalSprees:
        return 13;
      case DestinyStatsCategoryType.MedalMultiKills:
        return 14;
      case DestinyStatsCategoryType.MedalAbilities:
        return 15;
      default:
        return null;
    }
  }
}