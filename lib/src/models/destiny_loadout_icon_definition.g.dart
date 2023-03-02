// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_icon_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutIconDefinition _$DestinyLoadoutIconDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutIconDefinition()
      ..iconImagePath = json['iconImagePath'] as String?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLoadoutIconDefinitionToJson(
        DestinyLoadoutIconDefinition instance) =>
    <String, dynamic>{
      'iconImagePath': instance.iconImagePath,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
