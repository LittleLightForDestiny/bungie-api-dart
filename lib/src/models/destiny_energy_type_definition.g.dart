// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyTypeDefinition _$DestinyEnergyTypeDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEnergyTypeDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..transparentIconPath = json['transparentIconPath'] as String?
      ..showIcon = json['showIcon'] as bool?
      ..enumValue = decodeDestinyEnergyType(json['enumValue'])
      ..capacityStatHash = (json['capacityStatHash'] as num?)?.toInt()
      ..costStatHash = (json['costStatHash'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyEnergyTypeDefinitionToJson(
  DestinyEnergyTypeDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'transparentIconPath': instance.transparentIconPath,
  'showIcon': instance.showIcon,
  'enumValue': encodeDestinyEnergyType(instance.enumValue),
  'capacityStatHash': instance.capacityStatHash,
  'costStatHash': instance.costStatHash,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
