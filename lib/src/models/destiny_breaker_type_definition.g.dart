// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_breaker_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBreakerTypeDefinition _$DestinyBreakerTypeDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyBreakerTypeDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..enumValue = decodeDestinyBreakerType(json['enumValue'])
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyBreakerTypeDefinitionToJson(
  DestinyBreakerTypeDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'enumValue': encodeDestinyBreakerType(instance.enumValue),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
