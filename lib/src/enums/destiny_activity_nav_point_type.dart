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
  int? get value {
    if (_$DestinyActivityNavPointTypeEnumMap.containsKey(this)){
      return _$DestinyActivityNavPointTypeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityNavPointType? decodeDestinyActivityNavPointType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityNavPointTypeValueMap.containsKey(value)){
    return _$DestinyActivityNavPointTypeValueMap[value];
  }

  return DestinyActivityNavPointType.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityNavPointType (DestinyActivityNavPointType? value) {
  return value?.value;
}

const Map<DestinyActivityNavPointType, int> _$DestinyActivityNavPointTypeEnumMap = <DestinyActivityNavPointType, int>{
    DestinyActivityNavPointType.Inactive:0,
    DestinyActivityNavPointType.PrimaryObjective:1,
    DestinyActivityNavPointType.SecondaryObjective:2,
    DestinyActivityNavPointType.TravelObjective:3,
    DestinyActivityNavPointType.PublicEventObjective:4,
    DestinyActivityNavPointType.AmmoCache:5,
    DestinyActivityNavPointType.PointTypeFlag:6,
    DestinyActivityNavPointType.CapturePoint:7,
    DestinyActivityNavPointType.DefensiveEncounter:8,
    DestinyActivityNavPointType.GhostInteraction:9,
    DestinyActivityNavPointType.KillAi:10,
    DestinyActivityNavPointType.QuestItem:11,
    DestinyActivityNavPointType.PatrolMission:12,
    DestinyActivityNavPointType.Incoming:13,
    DestinyActivityNavPointType.ArenaObjective:14,
    DestinyActivityNavPointType.AutomationHint:15,
    DestinyActivityNavPointType.TrackedQuest:16,
};
const Map<int, DestinyActivityNavPointType> _$DestinyActivityNavPointTypeValueMap = <int, DestinyActivityNavPointType>{
    0:DestinyActivityNavPointType.Inactive,
    1:DestinyActivityNavPointType.PrimaryObjective,
    2:DestinyActivityNavPointType.SecondaryObjective,
    3:DestinyActivityNavPointType.TravelObjective,
    4:DestinyActivityNavPointType.PublicEventObjective,
    5:DestinyActivityNavPointType.AmmoCache,
    6:DestinyActivityNavPointType.PointTypeFlag,
    7:DestinyActivityNavPointType.CapturePoint,
    8:DestinyActivityNavPointType.DefensiveEncounter,
    9:DestinyActivityNavPointType.GhostInteraction,
    10:DestinyActivityNavPointType.KillAi,
    11:DestinyActivityNavPointType.QuestItem,
    12:DestinyActivityNavPointType.PatrolMission,
    13:DestinyActivityNavPointType.Incoming,
    14:DestinyActivityNavPointType.ArenaObjective,
    15:DestinyActivityNavPointType.AutomationHint,
    16:DestinyActivityNavPointType.TrackedQuest,
};