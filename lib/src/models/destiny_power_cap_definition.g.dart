// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_power_cap_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPowerCapDefinition _$DestinyPowerCapDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyPowerCapDefinition()
      ..powerCap = json['powerCap'] as int?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyPowerCapDefinitionToJson(
        DestinyPowerCapDefinition instance) =>
    <String, dynamic>{
      'powerCap': instance.powerCap,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
