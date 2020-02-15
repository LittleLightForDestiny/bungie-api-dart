import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityNavPointType {
  ///Inactive = 0
  @JsonValue(0)
  Inactive,
  ///PrimaryObjective = 1
  @JsonValue(1)
  PrimaryObjective,
  ///SecondaryObjective = 2
  @JsonValue(2)
  SecondaryObjective,
  ///TravelObjective = 3
  @JsonValue(3)
  TravelObjective,
  ///PublicEventObjective = 4
  @JsonValue(4)
  PublicEventObjective,
  ///AmmoCache = 5
  @JsonValue(5)
  AmmoCache,
  ///PointTypeFlag = 6
  @JsonValue(6)
  PointTypeFlag,
  ///CapturePoint = 7
  @JsonValue(7)
  CapturePoint,
  ///DefensiveEncounter = 8
  @JsonValue(8)
  DefensiveEncounter,
  ///GhostInteraction = 9
  @JsonValue(9)
  GhostInteraction,
  ///KillAi = 10
  @JsonValue(10)
  KillAi,
  ///QuestItem = 11
  @JsonValue(11)
  QuestItem,
  ///PatrolMission = 12
  @JsonValue(12)
  PatrolMission,
  ///Incoming = 13
  @JsonValue(13)
  Incoming,
  ///ArenaObjective = 14
  @JsonValue(14)
  ArenaObjective,
  ///AutomationHint = 15
  @JsonValue(15)
  AutomationHint,
  ///TrackedQuest = 16
  @JsonValue(16)
  TrackedQuest,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityNavPointTypeExtension on DestinyActivityNavPointType{
  int get value {
    switch(this){
      case DestinyActivityNavPointType.Inactive:
        return 0;
      case DestinyActivityNavPointType.PrimaryObjective:
        return 1;
      case DestinyActivityNavPointType.SecondaryObjective:
        return 2;
      case DestinyActivityNavPointType.TravelObjective:
        return 3;
      case DestinyActivityNavPointType.PublicEventObjective:
        return 4;
      case DestinyActivityNavPointType.AmmoCache:
        return 5;
      case DestinyActivityNavPointType.PointTypeFlag:
        return 6;
      case DestinyActivityNavPointType.CapturePoint:
        return 7;
      case DestinyActivityNavPointType.DefensiveEncounter:
        return 8;
      case DestinyActivityNavPointType.GhostInteraction:
        return 9;
      case DestinyActivityNavPointType.KillAi:
        return 10;
      case DestinyActivityNavPointType.QuestItem:
        return 11;
      case DestinyActivityNavPointType.PatrolMission:
        return 12;
      case DestinyActivityNavPointType.Incoming:
        return 13;
      case DestinyActivityNavPointType.ArenaObjective:
        return 14;
      case DestinyActivityNavPointType.AutomationHint:
        return 15;
      case DestinyActivityNavPointType.TrackedQuest:
        return 16;
      default:
        return null;
    }
  }
}