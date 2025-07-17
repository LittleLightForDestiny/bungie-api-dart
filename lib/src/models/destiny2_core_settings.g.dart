// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny2_core_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destiny2CoreSettings _$Destiny2CoreSettingsFromJson(
        Map<String, dynamic> json) =>
    Destiny2CoreSettings()
      ..collectionRootNode = (json['collectionRootNode'] as num?)?.toInt()
      ..badgesRootNode = (json['badgesRootNode'] as num?)?.toInt()
      ..recordsRootNode = (json['recordsRootNode'] as num?)?.toInt()
      ..medalsRootNode = (json['medalsRootNode'] as num?)?.toInt()
      ..metricsRootNode = (json['metricsRootNode'] as num?)?.toInt()
      ..activeTriumphsRootNodeHash =
          (json['activeTriumphsRootNodeHash'] as num?)?.toInt()
      ..activeSealsRootNodeHash =
          (json['activeSealsRootNodeHash'] as num?)?.toInt()
      ..legacyTriumphsRootNodeHash =
          (json['legacyTriumphsRootNodeHash'] as num?)?.toInt()
      ..legacySealsRootNodeHash =
          (json['legacySealsRootNodeHash'] as num?)?.toInt()
      ..medalsRootNodeHash = (json['medalsRootNodeHash'] as num?)?.toInt()
      ..exoticCatalystsRootNodeHash =
          (json['exoticCatalystsRootNodeHash'] as num?)?.toInt()
      ..loreRootNodeHash = (json['loreRootNodeHash'] as num?)?.toInt()
      ..craftingRootNodeHash = (json['craftingRootNodeHash'] as num?)?.toInt()
      ..loadoutConstantsHash = (json['loadoutConstantsHash'] as num?)?.toInt()
      ..guardianRankConstantsHash =
          (json['guardianRankConstantsHash'] as num?)?.toInt()
      ..fireteamFinderConstantsHash =
          (json['fireteamFinderConstantsHash'] as num?)?.toInt()
      ..inventoryItemConstantsHash =
          (json['inventoryItemConstantsHash'] as num?)?.toInt()
      ..featuredItemsListHash = (json['featuredItemsListHash'] as num?)?.toInt()
      ..armorArchetypePlugSetHash =
          (json['armorArchetypePlugSetHash'] as num?)?.toInt()
      ..seasonalHubEventCardHash =
          (json['seasonalHubEventCardHash'] as num?)?.toInt()
      ..guardianRanksRootNodeHash =
          (json['guardianRanksRootNodeHash'] as num?)?.toInt()
      ..currentRankProgressionHashes =
          (json['currentRankProgressionHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..insertPlugFreeProtectedPlugItemHashes =
          (json['insertPlugFreeProtectedPlugItemHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..insertPlugFreeBlockedSocketTypeHashes =
          (json['insertPlugFreeBlockedSocketTypeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..enabledFireteamFinderActivityGraphHashes =
          (json['enabledFireteamFinderActivityGraphHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..undiscoveredCollectibleImage =
          json['undiscoveredCollectibleImage'] as String?
      ..ammoTypeHeavyIcon = json['ammoTypeHeavyIcon'] as String?
      ..ammoTypeSpecialIcon = json['ammoTypeSpecialIcon'] as String?
      ..ammoTypePrimaryIcon = json['ammoTypePrimaryIcon'] as String?
      ..currentSeasonalArtifactHash =
          (json['currentSeasonalArtifactHash'] as num?)?.toInt()
      ..currentSeasonHash = (json['currentSeasonHash'] as num?)?.toInt()
      ..seasonalChallengesPresentationNodeHash =
          (json['seasonalChallengesPresentationNodeHash'] as num?)?.toInt()
      ..futureSeasonHashes = (json['futureSeasonHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..pastSeasonHashes = (json['pastSeasonHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList();

Map<String, dynamic> _$Destiny2CoreSettingsToJson(
        Destiny2CoreSettings instance) =>
    <String, dynamic>{
      'collectionRootNode': instance.collectionRootNode,
      'badgesRootNode': instance.badgesRootNode,
      'recordsRootNode': instance.recordsRootNode,
      'medalsRootNode': instance.medalsRootNode,
      'metricsRootNode': instance.metricsRootNode,
      'activeTriumphsRootNodeHash': instance.activeTriumphsRootNodeHash,
      'activeSealsRootNodeHash': instance.activeSealsRootNodeHash,
      'legacyTriumphsRootNodeHash': instance.legacyTriumphsRootNodeHash,
      'legacySealsRootNodeHash': instance.legacySealsRootNodeHash,
      'medalsRootNodeHash': instance.medalsRootNodeHash,
      'exoticCatalystsRootNodeHash': instance.exoticCatalystsRootNodeHash,
      'loreRootNodeHash': instance.loreRootNodeHash,
      'craftingRootNodeHash': instance.craftingRootNodeHash,
      'loadoutConstantsHash': instance.loadoutConstantsHash,
      'guardianRankConstantsHash': instance.guardianRankConstantsHash,
      'fireteamFinderConstantsHash': instance.fireteamFinderConstantsHash,
      'inventoryItemConstantsHash': instance.inventoryItemConstantsHash,
      'featuredItemsListHash': instance.featuredItemsListHash,
      'armorArchetypePlugSetHash': instance.armorArchetypePlugSetHash,
      'seasonalHubEventCardHash': instance.seasonalHubEventCardHash,
      'guardianRanksRootNodeHash': instance.guardianRanksRootNodeHash,
      'currentRankProgressionHashes': instance.currentRankProgressionHashes,
      'insertPlugFreeProtectedPlugItemHashes':
          instance.insertPlugFreeProtectedPlugItemHashes,
      'insertPlugFreeBlockedSocketTypeHashes':
          instance.insertPlugFreeBlockedSocketTypeHashes,
      'enabledFireteamFinderActivityGraphHashes':
          instance.enabledFireteamFinderActivityGraphHashes,
      'undiscoveredCollectibleImage': instance.undiscoveredCollectibleImage,
      'ammoTypeHeavyIcon': instance.ammoTypeHeavyIcon,
      'ammoTypeSpecialIcon': instance.ammoTypeSpecialIcon,
      'ammoTypePrimaryIcon': instance.ammoTypePrimaryIcon,
      'currentSeasonalArtifactHash': instance.currentSeasonalArtifactHash,
      'currentSeasonHash': instance.currentSeasonHash,
      'seasonalChallengesPresentationNodeHash':
          instance.seasonalChallengesPresentationNodeHash,
      'futureSeasonHashes': instance.futureSeasonHashes,
      'pastSeasonHashes': instance.pastSeasonHashes,
    };
