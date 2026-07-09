// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_pathfinder_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPathfinderConstantsDefinition
_$DestinyPathfinderConstantsDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyPathfinderConstantsDefinition()
      ..thePaleHeartPathfinderRootNodeHash =
          (json['thePaleHeartPathfinderRootNodeHash'] as num?)?.toInt()
      ..allPathfinderRootNodeHashes =
          (json['allPathfinderRootNodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..pathfinderTreeTiers =
          (json['pathfinderTreeTiers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          )
      ..pathfinderTopology =
          (json['pathfinderTopology'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
            ),
          )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyPathfinderConstantsDefinitionToJson(
  DestinyPathfinderConstantsDefinition instance,
) => <String, dynamic>{
  'thePaleHeartPathfinderRootNodeHash':
      instance.thePaleHeartPathfinderRootNodeHash,
  'allPathfinderRootNodeHashes': instance.allPathfinderRootNodeHashes,
  'pathfinderTreeTiers': instance.pathfinderTreeTiers,
  'pathfinderTopology': instance.pathfinderTopology,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
