// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_breaker_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBreakerTypeDefinition _$DestinyBreakerTypeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyBreakerTypeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..enumValue = json['enumValue'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyBreakerTypeDefinitionToJson(
        DestinyBreakerTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'enumValue': instance.enumValue,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
