// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_sandbox_perk_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySandboxPerkDefinition _$DestinySandboxPerkDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinySandboxPerkDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..perkIdentifier = json['perkIdentifier'] as String?
      ..isDisplayable = json['isDisplayable'] as bool?
      ..damageType = decodeDamageType(json['damageType'])
      ..damageTypeHash = (json['damageTypeHash'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySandboxPerkDefinitionToJson(
        DestinySandboxPerkDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'perkIdentifier': instance.perkIdentifier,
      'isDisplayable': instance.isDisplayable,
      'damageType': encodeDamageType(instance.damageType),
      'damageTypeHash': instance.damageTypeHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
