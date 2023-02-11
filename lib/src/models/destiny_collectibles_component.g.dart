// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectiblesComponent _$DestinyCollectiblesComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCollectiblesComponent()
      ..collectibles = (json['collectibles'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyCollectibleComponent.fromJson(e as Map<String, dynamic>)),
      )
      ..collectionCategoriesRootNodeHash =
          json['collectionCategoriesRootNodeHash'] as int?
      ..collectionBadgesRootNodeHash =
          json['collectionBadgesRootNodeHash'] as int?;

Map<String, dynamic> _$DestinyCollectiblesComponentToJson(
        DestinyCollectiblesComponent instance) =>
    <String, dynamic>{
      'collectibles':
          instance.collectibles?.map((k, e) => MapEntry(k, e.toJson())),
      'collectionCategoriesRootNodeHash':
          instance.collectionCategoriesRootNodeHash,
      'collectionBadgesRootNodeHash': instance.collectionBadgesRootNodeHash,
    };
