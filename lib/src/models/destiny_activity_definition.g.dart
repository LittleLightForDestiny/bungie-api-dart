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
      ..releaseTime = (json['releaseTime'] as num?)?.toInt()
      ..activityLightLevel = (json['activityLightLevel'] as num?)?.toInt()
      ..destinationHash = (json['destinationHash'] as num?)?.toInt()
      ..placeHash = (json['placeHash'] as num?)?.toInt()
      ..activityTypeHash = (json['activityTypeHash'] as num?)?.toInt()
      ..tier = (json['tier'] as num?)?.toInt()
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
      ..activityFamilyHashes = (json['activityFamilyHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..traitHashes = (json['traitHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..requirements = json['requirements'] == null
          ? null
          : DestinyActivityRequirementsBlock.fromJson(
              json['requirements'] as Map<String, dynamic>)
      ..difficultyTierCollectionHash =
          (json['difficultyTierCollectionHash'] as num?)?.toInt()
      ..selectableSkullCollectionHashes =
          (json['selectableSkullCollectionHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
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
      ..directActivityModeHash =
          (json['directActivityModeHash'] as num?)?.toInt()
      ..directActivityModeType =
          (json['directActivityModeType'] as num?)?.toInt()
      ..loadouts = (json['loadouts'] as List<dynamic>?)
          ?.map((e) => DestinyActivityLoadoutRequirementSet.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..activityModeHashes = (json['activityModeHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..activityModeTypes = (json['activityModeTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DestinyActivityModeTypeEnumMap, e))
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
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityDefinitionToJson(
        DestinyActivityDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'originalDisplayProperties': instance.originalDisplayProperties?.toJson(),
      'selectionScreenDisplayProperties':
          instance.selectionScreenDisplayProperties?.toJson(),
      'releaseIcon': instance.releaseIcon,
      'releaseTime': instance.releaseTime,
      'activityLightLevel': instance.activityLightLevel,
      'destinationHash': instance.destinationHash,
      'placeHash': instance.placeHash,
      'activityTypeHash': instance.activityTypeHash,
      'tier': instance.tier,
      'pgcrImage': instance.pgcrImage,
      'rewards': instance.rewards?.map((e) => e.toJson()).toList(),
      'modifiers': instance.modifiers?.map((e) => e.toJson()).toList(),
      'isPlaylist': instance.isPlaylist,
      'challenges': instance.challenges?.map((e) => e.toJson()).toList(),
      'optionalUnlockStrings':
          instance.optionalUnlockStrings?.map((e) => e.toJson()).toList(),
      'activityFamilyHashes': instance.activityFamilyHashes,
      'traitHashes': instance.traitHashes,
      'requirements': instance.requirements?.toJson(),
      'difficultyTierCollectionHash': instance.difficultyTierCollectionHash,
      'selectableSkullCollectionHashes':
          instance.selectableSkullCollectionHashes,
      'playlistItems': instance.playlistItems?.map((e) => e.toJson()).toList(),
      'activityGraphList':
          instance.activityGraphList?.map((e) => e.toJson()).toList(),
      'matchmaking': instance.matchmaking?.toJson(),
      'guidedGame': instance.guidedGame?.toJson(),
      'directActivityModeHash': instance.directActivityModeHash,
      'directActivityModeType': instance.directActivityModeType,
      'loadouts': instance.loadouts?.map((e) => e.toJson()).toList(),
      'activityModeHashes': instance.activityModeHashes,
      'activityModeTypes': instance.activityModeTypes
          ?.map((e) => _$DestinyActivityModeTypeEnumMap[e]!)
          .toList(),
      'isPvP': instance.isPvP,
      'insertionPoints':
          instance.insertionPoints?.map((e) => e.toJson()).toList(),
      'activityLocationMappings':
          instance.activityLocationMappings?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
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
