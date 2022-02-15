import 'package:json_annotation/json_annotation.dart';

enum DestinyItemType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Currency = 1
  @JsonValue(1)
  Currency,
  ///Armor = 2
  @JsonValue(2)
  Armor,
  ///Weapon = 3
  @JsonValue(3)
  Weapon,
  ///Message = 7
  @JsonValue(7)
  Message,
  ///Engram = 8
  @JsonValue(8)
  Engram,
  ///Consumable = 9
  @JsonValue(9)
  Consumable,
  ///ExchangeMaterial = 10
  @JsonValue(10)
  ExchangeMaterial,
  ///MissionReward = 11
  @JsonValue(11)
  MissionReward,
  ///QuestStep = 12
  @JsonValue(12)
  QuestStep,
  ///QuestStepComplete = 13
  @JsonValue(13)
  QuestStepComplete,
  ///Emblem = 14
  @JsonValue(14)
  Emblem,
  ///Quest = 15
  @JsonValue(15)
  Quest,
  ///Subclass = 16
  @JsonValue(16)
  Subclass,
  ///ClanBanner = 17
  @JsonValue(17)
  ClanBanner,
  ///Aura = 18
  @JsonValue(18)
  Aura,
  ///Mod = 19
  @JsonValue(19)
  Mod,
  ///Dummy = 20
  @JsonValue(20)
  Dummy,
  ///Ship = 21
  @JsonValue(21)
  Ship,
  ///Vehicle = 22
  @JsonValue(22)
  Vehicle,
  ///Emote = 23
  @JsonValue(23)
  Emote,
  ///Ghost = 24
  @JsonValue(24)
  Ghost,
  ///Package = 25
  @JsonValue(25)
  Package,
  ///Bounty = 26
  @JsonValue(26)
  Bounty,
  ///Wrapper = 27
  @JsonValue(27)
  Wrapper,
  ///SeasonalArtifact = 28
  @JsonValue(28)
  SeasonalArtifact,
  ///Finisher = 29
  @JsonValue(29)
  Finisher,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyItemTypeExtension on DestinyItemType{
  int? get value {
    if (_$DestinyItemTypeEnumMap.containsKey(this)){
      return _$DestinyItemTypeEnumMap[this];
    }
    return null;
  }
}

DestinyItemType? decodeDestinyItemType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyItemTypeValueMap.containsKey(value)){
    return _$DestinyItemTypeValueMap[value];
  }

  return DestinyItemType.ProtectedInvalidEnumValue;
}

int? encodeDestinyItemType (DestinyItemType? value) {
  return value?.value;
}

const Map<DestinyItemType, int> _$DestinyItemTypeEnumMap = <DestinyItemType, int>{
    DestinyItemType.None:0,
    DestinyItemType.Currency:1,
    DestinyItemType.Armor:2,
    DestinyItemType.Weapon:3,
    DestinyItemType.Message:7,
    DestinyItemType.Engram:8,
    DestinyItemType.Consumable:9,
    DestinyItemType.ExchangeMaterial:10,
    DestinyItemType.MissionReward:11,
    DestinyItemType.QuestStep:12,
    DestinyItemType.QuestStepComplete:13,
    DestinyItemType.Emblem:14,
    DestinyItemType.Quest:15,
    DestinyItemType.Subclass:16,
    DestinyItemType.ClanBanner:17,
    DestinyItemType.Aura:18,
    DestinyItemType.Mod:19,
    DestinyItemType.Dummy:20,
    DestinyItemType.Ship:21,
    DestinyItemType.Vehicle:22,
    DestinyItemType.Emote:23,
    DestinyItemType.Ghost:24,
    DestinyItemType.Package:25,
    DestinyItemType.Bounty:26,
    DestinyItemType.Wrapper:27,
    DestinyItemType.SeasonalArtifact:28,
    DestinyItemType.Finisher:29,
};
const Map<int, DestinyItemType> _$DestinyItemTypeValueMap = <int, DestinyItemType>{
    0:DestinyItemType.None,
    1:DestinyItemType.Currency,
    2:DestinyItemType.Armor,
    3:DestinyItemType.Weapon,
    7:DestinyItemType.Message,
    8:DestinyItemType.Engram,
    9:DestinyItemType.Consumable,
    10:DestinyItemType.ExchangeMaterial,
    11:DestinyItemType.MissionReward,
    12:DestinyItemType.QuestStep,
    13:DestinyItemType.QuestStepComplete,
    14:DestinyItemType.Emblem,
    15:DestinyItemType.Quest,
    16:DestinyItemType.Subclass,
    17:DestinyItemType.ClanBanner,
    18:DestinyItemType.Aura,
    19:DestinyItemType.Mod,
    20:DestinyItemType.Dummy,
    21:DestinyItemType.Ship,
    22:DestinyItemType.Vehicle,
    23:DestinyItemType.Emote,
    24:DestinyItemType.Ghost,
    25:DestinyItemType.Package,
    26:DestinyItemType.Bounty,
    27:DestinyItemType.Wrapper,
    28:DestinyItemType.SeasonalArtifact,
    29:DestinyItemType.Finisher,
};