// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_global_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGlobalConstantsDefinition _$DestinyGlobalConstantsDefinitionFromJson(
  Map<String, dynamic> json,
) => DestinyGlobalConstantsDefinition()
  ..pathfinderConstants = json['pathfinderConstants'] == null
      ? null
      : DestinyPathfinderConstantsDefinition.fromJson(
          json['pathfinderConstants'] as Map<String, dynamic>,
        )
  ..collectionsRootNodeHash = (json['collectionsRootNodeHash'] as num?)?.toInt()
  ..collectionBadgesRootNodeHash =
      (json['collectionBadgesRootNodeHash'] as num?)?.toInt()
  ..activeTriumphsRootNodeHash = (json['activeTriumphsRootNodeHash'] as num?)
      ?.toInt()
  ..activeSealsRootNodeHash = (json['activeSealsRootNodeHash'] as num?)?.toInt()
  ..legacyTriumphsRootNodeHash = (json['legacyTriumphsRootNodeHash'] as num?)
      ?.toInt()
  ..legacySealsRootNodeHash = (json['legacySealsRootNodeHash'] as num?)?.toInt()
  ..medalsRootNodeHash = (json['medalsRootNodeHash'] as num?)?.toInt()
  ..exoticCatalystsRootNodeHash = (json['exoticCatalystsRootNodeHash'] as num?)
      ?.toInt()
  ..loreRootNodeHash = (json['loreRootNodeHash'] as num?)?.toInt()
  ..metricsRootNodeHash = (json['metricsRootNodeHash'] as num?)?.toInt()
  ..craftingRootNodeHash = (json['craftingRootNodeHash'] as num?)?.toInt()
  ..guardianRanksRootNodeHash = (json['guardianRanksRootNodeHash'] as num?)
      ?.toInt()
  ..seasonalHubEventCardHash = (json['seasonalHubEventCardHash'] as num?)
      ?.toInt()
  ..destinyRewardPassRankSealImages =
      json['destinyRewardPassRankSealImages'] == null
      ? null
      : DestinyRewardPassRankSealImages.fromJson(
          json['destinyRewardPassRankSealImages'] as Map<String, dynamic>,
        )
  ..destinySeasonalHubRankIconImages =
      json['destinySeasonalHubRankIconImages'] == null
      ? null
      : DestinySeasonalHubRankIconImages.fromJson(
          json['destinySeasonalHubRankIconImages'] as Map<String, dynamic>,
        )
  ..armorArchetypePlugSetHash = (json['armorArchetypePlugSetHash'] as num?)
      ?.toInt()
  ..featuredItemsListHash = (json['featuredItemsListHash'] as num?)?.toInt()
  ..portalActivityGraphRootNodesWithIcons =
      (json['portalActivityGraphRootNodesWithIcons'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
  ..orderRewardsUnlockValueHashesToRewardItemHashes =
      (json['orderRewardsUnlockValueHashesToRewardItemHashes']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toInt()))
  ..questItemTraitToFeaturedQuestImagePath =
      (json['questItemTraitToFeaturedQuestImagePath'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
  ..hash = (json['hash'] as num?)?.toInt()
  ..index = (json['index'] as num?)?.toInt()
  ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyGlobalConstantsDefinitionToJson(
  DestinyGlobalConstantsDefinition instance,
) => <String, dynamic>{
  'pathfinderConstants': instance.pathfinderConstants?.toJson(),
  'collectionsRootNodeHash': instance.collectionsRootNodeHash,
  'collectionBadgesRootNodeHash': instance.collectionBadgesRootNodeHash,
  'activeTriumphsRootNodeHash': instance.activeTriumphsRootNodeHash,
  'activeSealsRootNodeHash': instance.activeSealsRootNodeHash,
  'legacyTriumphsRootNodeHash': instance.legacyTriumphsRootNodeHash,
  'legacySealsRootNodeHash': instance.legacySealsRootNodeHash,
  'medalsRootNodeHash': instance.medalsRootNodeHash,
  'exoticCatalystsRootNodeHash': instance.exoticCatalystsRootNodeHash,
  'loreRootNodeHash': instance.loreRootNodeHash,
  'metricsRootNodeHash': instance.metricsRootNodeHash,
  'craftingRootNodeHash': instance.craftingRootNodeHash,
  'guardianRanksRootNodeHash': instance.guardianRanksRootNodeHash,
  'seasonalHubEventCardHash': instance.seasonalHubEventCardHash,
  'destinyRewardPassRankSealImages': instance.destinyRewardPassRankSealImages
      ?.toJson(),
  'destinySeasonalHubRankIconImages': instance.destinySeasonalHubRankIconImages
      ?.toJson(),
  'armorArchetypePlugSetHash': instance.armorArchetypePlugSetHash,
  'featuredItemsListHash': instance.featuredItemsListHash,
  'portalActivityGraphRootNodesWithIcons':
      instance.portalActivityGraphRootNodesWithIcons,
  'orderRewardsUnlockValueHashesToRewardItemHashes':
      instance.orderRewardsUnlockValueHashesToRewardItemHashes,
  'questItemTraitToFeaturedQuestImagePath':
      instance.questItemTraitToFeaturedQuestImagePath,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
