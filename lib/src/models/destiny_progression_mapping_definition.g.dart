// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_mapping_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionMappingDefinition
_$DestinyProgressionMappingDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyProgressionMappingDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..displayUnits = json['displayUnits'] as String?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyProgressionMappingDefinitionToJson(
  DestinyProgressionMappingDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'displayUnits': instance.displayUnits,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
