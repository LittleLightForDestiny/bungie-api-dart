// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_source_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSourceDefinition _$DestinyItemSourceDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemSourceDefinition()
      ..level = (json['level'] as num?)?.toInt()
      ..minQuality = (json['minQuality'] as num?)?.toInt()
      ..maxQuality = (json['maxQuality'] as num?)?.toInt()
      ..minLevelRequired = (json['minLevelRequired'] as num?)?.toInt()
      ..maxLevelRequired = (json['maxLevelRequired'] as num?)?.toInt()
      ..computedStats = (json['computedStats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyInventoryItemStatDefinition.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      )
      ..sourceHashes =
          (json['sourceHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyItemSourceDefinitionToJson(
  DestinyItemSourceDefinition instance,
) => <String, dynamic>{
  'level': instance.level,
  'minQuality': instance.minQuality,
  'maxQuality': instance.maxQuality,
  'minLevelRequired': instance.minLevelRequired,
  'maxLevelRequired': instance.maxLevelRequired,
  'computedStats': instance.computedStats?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'sourceHashes': instance.sourceHashes,
};
