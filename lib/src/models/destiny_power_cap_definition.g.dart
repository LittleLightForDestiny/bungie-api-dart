// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_power_cap_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPowerCapDefinition _$DestinyPowerCapDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPowerCapDefinition()
      ..powerCap = (json['powerCap'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyPowerCapDefinitionToJson(
  DestinyPowerCapDefinition instance,
) => <String, dynamic>{
  'powerCap': instance.powerCap,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
