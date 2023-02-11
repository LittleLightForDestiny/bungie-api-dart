// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_override_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatOverrideDefinition _$DestinyStatOverrideDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyStatOverrideDefinition()
      ..statHash = json['statHash'] as int?
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyStatOverrideDefinitionToJson(
        DestinyStatOverrideDefinition instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'displayProperties': instance.displayProperties?.toJson(),
    };
