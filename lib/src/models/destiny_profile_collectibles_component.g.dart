// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileCollectiblesComponent
    _$DestinyProfileCollectiblesComponentFromJson(Map<String, dynamic> json) {
  return DestinyProfileCollectiblesComponent()
    ..recentCollectibleHashes = (json['recentCollectibleHashes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..newnessFlaggedCollectibleHashes =
        (json['newnessFlaggedCollectibleHashes'] as List)
            ?.map((e) => e as int)
            ?.toList()
    ..collectibles = (json['collectibles'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyCollectibleComponent.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyProfileCollectiblesComponentToJson(
        DestinyProfileCollectiblesComponent instance) =>
    <String, dynamic>{
      'recentCollectibleHashes': instance.recentCollectibleHashes,
      'newnessFlaggedCollectibleHashes':
          instance.newnessFlaggedCollectibleHashes,
      'collectibles': instance.collectibles,
    };
