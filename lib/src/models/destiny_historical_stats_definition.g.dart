// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsDefinition _$DestinyHistoricalStatsDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyHistoricalStatsDefinition()
      ..statId = json['statId'] as String?
      ..group = decodeDestinyStatsGroupType(json['group'])
      ..periodTypes =
          (json['periodTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PeriodTypeEnumMap, e))
              .toList()
      ..modes =
          (json['modes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DestinyActivityModeTypeEnumMap, e))
              .toList()
      ..category = decodeDestinyStatsCategoryType(json['category'])
      ..statName = json['statName'] as String?
      ..statNameAbbr = json['statNameAbbr'] as String?
      ..statDescription = json['statDescription'] as String?
      ..unitType = decodeUnitType(json['unitType'])
      ..iconImage = json['iconImage'] as String?
      ..mergeMethod = (json['mergeMethod'] as num?)?.toInt()
      ..unitLabel = json['unitLabel'] as String?
      ..weight = (json['weight'] as num?)?.toInt()
      ..medalTierHash = (json['medalTierHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyHistoricalStatsDefinitionToJson(
  DestinyHistoricalStatsDefinition instance,
) => <String, dynamic>{
  'statId': instance.statId,
  'group': encodeDestinyStatsGroupType(instance.group),
  'periodTypes':
      instance.periodTypes?.map((e) => _$PeriodTypeEnumMap[e]!).toList(),
  'modes':
      instance.modes?.map((e) => _$DestinyActivityModeTypeEnumMap[e]!).toList(),
  'category': encodeDestinyStatsCategoryType(instance.category),
  'statName': instance.statName,
  'statNameAbbr': instance.statNameAbbr,
  'statDescription': instance.statDescription,
  'unitType': encodeUnitType(instance.unitType),
  'iconImage': instance.iconImage,
  'mergeMethod': instance.mergeMethod,
  'unitLabel': instance.unitLabel,
  'weight': instance.weight,
  'medalTierHash': instance.medalTierHash,
};

const _$PeriodTypeEnumMap = {
  PeriodType.None: 0,
  PeriodType.Daily: 1,
  PeriodType.AllTime: 2,
  PeriodType.Activity: 3,
  PeriodType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyActivityModeTypeEnumMap = {
  DestinyActivityModeType.None: 0,
  DestinyActivityModeType.Story: 2,
  DestinyActivityModeType.Strike: 3,
  DestinyActivityModeType.Raid: 4,
  DestinyActivityModeType.AllPvP: 5,
  DestinyActivityModeType.Patrol: 6,
  DestinyActivityModeType.AllPvE: 7,
  DestinyActivityModeType.Reserved9: 9,
  DestinyActivityModeType.Control: 10,
  DestinyActivityModeType.Reserved11: 11,
  DestinyActivityModeType.Clash: 12,
  DestinyActivityModeType.Reserved13: 13,
  DestinyActivityModeType.CrimsonDoubles: 15,
  DestinyActivityModeType.Nightfall: 16,
  DestinyActivityModeType.HeroicNightfall: 17,
  DestinyActivityModeType.AllStrikes: 18,
  DestinyActivityModeType.IronBanner: 19,
  DestinyActivityModeType.Reserved20: 20,
  DestinyActivityModeType.Reserved21: 21,
  DestinyActivityModeType.Reserved22: 22,
  DestinyActivityModeType.Reserved24: 24,
  DestinyActivityModeType.AllMayhem: 25,
  DestinyActivityModeType.Reserved26: 26,
  DestinyActivityModeType.Reserved27: 27,
  DestinyActivityModeType.Reserved28: 28,
  DestinyActivityModeType.Reserved29: 29,
  DestinyActivityModeType.Reserved30: 30,
  DestinyActivityModeType.Supremacy: 31,
  DestinyActivityModeType.PrivateMatchesAll: 32,
  DestinyActivityModeType.Survival: 37,
  DestinyActivityModeType.Countdown: 38,
  DestinyActivityModeType.TrialsOfTheNine: 39,
  DestinyActivityModeType.Social: 40,
  DestinyActivityModeType.TrialsCountdown: 41,
  DestinyActivityModeType.TrialsSurvival: 42,
  DestinyActivityModeType.IronBannerControl: 43,
  DestinyActivityModeType.IronBannerClash: 44,
  DestinyActivityModeType.IronBannerSupremacy: 45,
  DestinyActivityModeType.ScoredNightfall: 46,
  DestinyActivityModeType.ScoredHeroicNightfall: 47,
  DestinyActivityModeType.Rumble: 48,
  DestinyActivityModeType.AllDoubles: 49,
  DestinyActivityModeType.Doubles: 50,
  DestinyActivityModeType.PrivateMatchesClash: 51,
  DestinyActivityModeType.PrivateMatchesControl: 52,
  DestinyActivityModeType.PrivateMatchesSupremacy: 53,
  DestinyActivityModeType.PrivateMatchesCountdown: 54,
  DestinyActivityModeType.PrivateMatchesSurvival: 55,
  DestinyActivityModeType.PrivateMatchesMayhem: 56,
  DestinyActivityModeType.PrivateMatchesRumble: 57,
  DestinyActivityModeType.HeroicAdventure: 58,
  DestinyActivityModeType.Showdown: 59,
  DestinyActivityModeType.Lockdown: 60,
  DestinyActivityModeType.Scorched: 61,
  DestinyActivityModeType.ScorchedTeam: 62,
  DestinyActivityModeType.Gambit: 63,
  DestinyActivityModeType.AllPvECompetitive: 64,
  DestinyActivityModeType.Breakthrough: 65,
  DestinyActivityModeType.BlackArmoryRun: 66,
  DestinyActivityModeType.Salvage: 67,
  DestinyActivityModeType.IronBannerSalvage: 68,
  DestinyActivityModeType.PvPCompetitive: 69,
  DestinyActivityModeType.PvPQuickplay: 70,
  DestinyActivityModeType.ClashQuickplay: 71,
  DestinyActivityModeType.ClashCompetitive: 72,
  DestinyActivityModeType.ControlQuickplay: 73,
  DestinyActivityModeType.ControlCompetitive: 74,
  DestinyActivityModeType.GambitPrime: 75,
  DestinyActivityModeType.Reckoning: 76,
  DestinyActivityModeType.Menagerie: 77,
  DestinyActivityModeType.VexOffensive: 78,
  DestinyActivityModeType.NightmareHunt: 79,
  DestinyActivityModeType.Elimination: 80,
  DestinyActivityModeType.Momentum: 81,
  DestinyActivityModeType.Dungeon: 82,
  DestinyActivityModeType.Sundial: 83,
  DestinyActivityModeType.TrialsOfOsiris: 84,
  DestinyActivityModeType.Dares: 85,
  DestinyActivityModeType.Offensive: 86,
  DestinyActivityModeType.LostSector: 87,
  DestinyActivityModeType.Rift: 88,
  DestinyActivityModeType.ZoneControl: 89,
  DestinyActivityModeType.IronBannerRift: 90,
  DestinyActivityModeType.IronBannerZoneControl: 91,
  DestinyActivityModeType.Relic: 92,
  DestinyActivityModeType.ProtectedInvalidEnumValue: 999999999,
};
