// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDefinition _$DestinyDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyDefinition()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyDefinitionToJson(DestinyDefinition instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
