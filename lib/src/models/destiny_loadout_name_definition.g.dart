// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_name_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutNameDefinition _$DestinyLoadoutNameDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutNameDefinition()
      ..name = json['name'] as String?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLoadoutNameDefinitionToJson(
        DestinyLoadoutNameDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
