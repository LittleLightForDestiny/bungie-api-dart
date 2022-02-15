// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDefinition _$DestinyActivityDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyActivityDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..originalDisplayProperties = json['originalDisplayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['originalDisplayProperties'] as Map<String, dynamic>)
      ..selectionScreenDisplayProperties =
          json['selectionScreenDisplayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['selectionScreenDisplayProperties']
                      as Map<String, dynamic>)
      ..releaseIcon = json['releaseIcon'] as String?
      ..releaseTime = json['releaseTime'] as int?
      ..activityLightLevel = json['activityLightLevel'] as int?
      ..destinationHash = json['destinationHash'] as int?
      ..placeHash = json['placeHash'] as int?
      ..activityTypeHash = json['activityTypeHash'] as int?
      ..tier = json['tier'] as int?
      ..pgcrImage = json['pgcrImage'] as String?
      ..rewards = (json['rewards'] as List<dynamic>?)
          ?.map((e) => DestinyActivityRewardDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..modifiers = (json['modifiers'] as List<dynamic>?)
          ?.map((e) => DestinyActivityModifierReferenceDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..isPlaylist = json['isPlaylist'] as bool?
      ..challenges = (json['challenges'] as List<dynamic>?)
          ?.map((e) => DestinyActivityChallengeDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..optionalUnlockStrings =
          (json['optionalUnlockStrings'] as List<dynamic>?)
              ?.map((e) => DestinyActivityUnlockStringDefinition.fromJson(
                  e as Map<String, dynamic>))
              .toList()
      ..playlistItems = (json['playlistItems'] as List<dynamic>?)
          ?.map((e) => DestinyActivityPlaylistItemDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..activityGraphList = (json['activityGraphList'] as List<dynamic>?)
          ?.map((e) => DestinyActivityGraphListEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..matchmaking = json['matchmaking'] == null
          ? null
          : DestinyActivityMatchmakingBlockDefinition.fromJson(
              json['matchmaking'] as Map<String, dynamic>)
      ..guidedGame = json['guidedGame'] == null
          ? null
          : DestinyActivityGuidedBlockDefinition.fromJson(
              json['guidedGame'] as Map<String, dynamic>)
      ..directActivityModeHash = json['directActivityModeHash'] as int?
      ..directActivityModeType = json['directActivityModeType'] as int?
      ..loadouts = (json['loadouts'] as List<dynamic>?)
          ?.map((e) => DestinyActivityLoadoutRequirementSet.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..activityModeHashes = (json['activityModeHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..activityModeTypes = (json['activityModeTypes'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$DestinyActivityModeTypeEnumMap, e))
          .toList()
      ..isPvP = json['isPvP'] as bool?
      ..insertionPoints = (json['insertionPoints'] as List<dynamic>?)
          ?.map((e) => DestinyActivityInsertionPointDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..activityLocationMappings =
          (json['activityLocationMappings'] as List<dynamic>?)
              ?.map((e) => DestinyEnvironmentLocationMapping.fromJson(
                  e as Map<String, dynamic>))
              .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityDefinitionToJson(
        DestinyActivityDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'originalDisplayProperties': instance.originalDisplayProperties,
      'selectionScreenDisplayProperties':
          instance.selectionScreenDisplayProperties,
      'releaseIcon': instance.releaseIcon,
      'releaseTime': instance.releaseTime,
      'activityLightLevel': instance.activityLightLevel,
      'destinationHash': instance.destinationHash,
      'placeHash': instance.placeHash,
      'activityTypeHash': instance.activityTypeHash,
      'tier': instance.tier,
      'pgcrImage': instance.pgcrImage,
      'rewards': instance.rewards,
      'modifiers': instance.modifiers,
      'isPlaylist': instance.isPlaylist,
      'challenges': instance.challenges,
      'optionalUnlockStrings': instance.optionalUnlockStrings,
      'playlistItems': instance.playlistItems,
      'activityGraphList': instance.activityGraphList,
      'matchmaking': instance.matchmaking,
      'guidedGame': instance.guidedGame,
      'directActivityModeHash': instance.directActivityModeHash,
      'directActivityModeType': instance.directActivityModeType,
      'loadouts': instance.loadouts,
      'activityModeHashes': instance.activityModeHashes,
      'activityModeTypes': instance.activityModeTypes
          ?.map((e) => _$DestinyActivityModeTypeEnumMap[e])
          .toList(),
      'isPvP': instance.isPvP,
      'insertionPoints': instance.insertionPoints,
      'activityLocationMappings': instance.activityLocationMappings,
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
  DestinyActivityModeType.ProtectedInvalidEnumValue: 999999999,
};
