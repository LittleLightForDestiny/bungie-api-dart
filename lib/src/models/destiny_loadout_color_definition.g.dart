// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_color_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutColorDefinition _$DestinyLoadoutColorDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutColorDefinition()
      ..colorImagePath = json['colorImagePath'] as String?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLoadoutColorDefinitionToJson(
        DestinyLoadoutColorDefinition instance) =>
    <String, dynamic>{
      'colorImagePath': instance.colorImagePath,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
