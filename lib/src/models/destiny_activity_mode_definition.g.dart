// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_mode_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityModeDefinition _$DestinyActivityModeDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyActivityModeDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..pgcrImage = json['pgcrImage'] as String?
      ..modeType = decodeDestinyActivityModeType(json['modeType'])
      ..activityModeCategory =
          decodeDestinyActivityModeCategory(json['activityModeCategory'])
      ..isTeamBased = json['isTeamBased'] as bool?
      ..isAggregateMode = json['isAggregateMode'] as bool?
      ..parentHashes = (json['parentHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..friendlyName = json['friendlyName'] as String?
      ..activityModeMappings =
          (json['activityModeMappings'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, _$enumDecode(_$DestinyActivityModeTypeEnumMap, e)),
      )
      ..display = json['display'] as bool?
      ..order = json['order'] as int?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityModeDefinitionToJson(
        DestinyActivityModeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'pgcrImage': instance.pgcrImage,
      'modeType': encodeDestinyActivityModeType(instance.modeType),
      'activityModeCategory':
          encodeDestinyActivityModeCategory(instance.activityModeCategory),
      'isTeamBased': instance.isTeamBased,
      'isAggregateMode': instance.isAggregateMode,
      'parentHashes': instance.parentHashes,
      'friendlyName': instance.friendlyName,
      'activityModeMappings': instance.activityModeMappings
          ?.map((k, e) => MapEntry(k, _$DestinyActivityModeTypeEnumMap[e])),
      'display': instance.display,
      'order': instance.order,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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
  DestinyActivityModeType.ProtectedInvalidEnumValue: 999999999,
};
