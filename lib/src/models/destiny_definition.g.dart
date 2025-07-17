// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDefinition _$DestinyDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyDefinition()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyDefinitionToJson(DestinyDefinition instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
