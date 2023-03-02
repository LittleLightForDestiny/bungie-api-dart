// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_damage_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDamageTypeDefinition _$DestinyDamageTypeDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyDamageTypeDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..transparentIconPath = json['transparentIconPath'] as String?
      ..showIcon = json['showIcon'] as bool?
      ..enumValue = decodeDamageType(json['enumValue'])
      ..color = json['color'] == null
          ? null
          : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyDamageTypeDefinitionToJson(
        DestinyDamageTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'transparentIconPath': instance.transparentIconPath,
      'showIcon': instance.showIcon,
      'enumValue': encodeDamageType(instance.enumValue),
      'color': instance.color?.toJson(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
