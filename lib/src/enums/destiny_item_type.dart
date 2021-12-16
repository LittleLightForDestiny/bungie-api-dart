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
    switch(this){
      case DestinyItemType.None:
        return 0;
      case DestinyItemType.Currency:
        return 1;
      case DestinyItemType.Armor:
        return 2;
      case DestinyItemType.Weapon:
        return 3;
      case DestinyItemType.Message:
        return 7;
      case DestinyItemType.Engram:
        return 8;
      case DestinyItemType.Consumable:
        return 9;
      case DestinyItemType.ExchangeMaterial:
        return 10;
      case DestinyItemType.MissionReward:
        return 11;
      case DestinyItemType.QuestStep:
        return 12;
      case DestinyItemType.QuestStepComplete:
        return 13;
      case DestinyItemType.Emblem:
        return 14;
      case DestinyItemType.Quest:
        return 15;
      case DestinyItemType.Subclass:
        return 16;
      case DestinyItemType.ClanBanner:
        return 17;
      case DestinyItemType.Aura:
        return 18;
      case DestinyItemType.Mod:
        return 19;
      case DestinyItemType.Dummy:
        return 20;
      case DestinyItemType.Ship:
        return 21;
      case DestinyItemType.Vehicle:
        return 22;
      case DestinyItemType.Emote:
        return 23;
      case DestinyItemType.Ghost:
        return 24;
      case DestinyItemType.Package:
        return 25;
      case DestinyItemType.Bounty:
        return 26;
      case DestinyItemType.Wrapper:
        return 27;
      case DestinyItemType.SeasonalArtifact:
        return 28;
      case DestinyItemType.Finisher:
        return 29;
      default:
        return null;
    }
  }
}