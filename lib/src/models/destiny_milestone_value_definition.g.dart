// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_value_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneValueDefinition _$DestinyMilestoneValueDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyMilestoneValueDefinition()
      ..key = json['key'] as String?
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyMilestoneValueDefinitionToJson(
        DestinyMilestoneValueDefinition instance) =>
    <String, dynamic>{
      'key': instance.key,
      'displayProperties': instance.displayProperties,
    };
