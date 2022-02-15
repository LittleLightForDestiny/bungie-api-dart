// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileCollectiblesComponent
    _$DestinyProfileCollectiblesComponentFromJson(Map<String, dynamic> json) =>
        DestinyProfileCollectiblesComponent()
          ..recentCollectibleHashes =
              (json['recentCollectibleHashes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList()
          ..newnessFlaggedCollectibleHashes =
              (json['newnessFlaggedCollectibleHashes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList()
          ..collectibles = (json['collectibles'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyCollectibleComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..collectionCategoriesRootNodeHash =
              json['collectionCategoriesRootNodeHash'] as int?
          ..collectionBadgesRootNodeHash =
              json['collectionBadgesRootNodeHash'] as int?;

Map<String, dynamic> _$DestinyProfileCollectiblesComponentToJson(
        DestinyProfileCollectiblesComponent instance) =>
    <String, dynamic>{
      'recentCollectibleHashes': instance.recentCollectibleHashes,
      'newnessFlaggedCollectibleHashes':
          instance.newnessFlaggedCollectibleHashes,
      'collectibles': instance.collectibles,
      'collectionCategoriesRootNodeHash':
          instance.collectionCategoriesRootNodeHash,
      'collectionBadgesRootNodeHash': instance.collectionBadgesRootNodeHash,
    };
