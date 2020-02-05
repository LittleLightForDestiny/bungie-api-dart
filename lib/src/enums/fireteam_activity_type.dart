import 'package:json_annotation/json_annotation.dart';

enum FireteamActivityType {
  ///All = 0
  @JsonValue(0)
  All,
  ///Raid = 1
  @JsonValue(1)
  Raid,
  ///Crucible = 2
  @JsonValue(2)
  Crucible,
  ///Trials = 3
  @JsonValue(3)
  Trials,
  ///Nightfall = 4
  @JsonValue(4)
  Nightfall,
  ///Anything = 5
  @JsonValue(5)
  Anything,
  ///Gambit = 6
  @JsonValue(6)
  Gambit,
  ///BlindWell = 7
  @JsonValue(7)
  BlindWell,
  ///EscalationProtocol = 8
  @JsonValue(8)
  EscalationProtocol,
  ///Forge = 9
  @JsonValue(9)
  Forge,
  ///Reckoning = 10
  @JsonValue(10)
  Reckoning,
  ///Menagerie = 11
  @JsonValue(11)
  Menagerie,
  ///NightmareHunts = 12
  @JsonValue(12)
  NightmareHunts,
  ///VexOffensive = 13
  @JsonValue(13)
  VexOffensive,
  ///AltarsOfSorrow = 14
  @JsonValue(14)
  AltarsOfSorrow,
  ///Dungeon = 15
  @JsonValue(15)
  Dungeon,
}

extension FireteamActivityTypeExtension on FireteamActivityType{
  int get value {
    switch(this){
      case FireteamActivityType.All:
        return 0;
      case FireteamActivityType.Raid:
        return 1;
      case FireteamActivityType.Crucible:
        return 2;
      case FireteamActivityType.Trials:
        return 3;
      case FireteamActivityType.Nightfall:
        return 4;
      case FireteamActivityType.Anything:
        return 5;
      case FireteamActivityType.Gambit:
        return 6;
      case FireteamActivityType.BlindWell:
        return 7;
      case FireteamActivityType.EscalationProtocol:
        return 8;
      case FireteamActivityType.Forge:
        return 9;
      case FireteamActivityType.Reckoning:
        return 10;
      case FireteamActivityType.Menagerie:
        return 11;
      case FireteamActivityType.NightmareHunts:
        return 12;
      case FireteamActivityType.VexOffensive:
        return 13;
      case FireteamActivityType.AltarsOfSorrow:
        return 14;
      case FireteamActivityType.Dungeon:
        return 15;
      default:
        return null;
    }
  }
}