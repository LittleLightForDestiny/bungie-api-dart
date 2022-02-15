// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_destination_bubble_setting_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDestinationBubbleSettingDefinition
    _$DestinyDestinationBubbleSettingDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyDestinationBubbleSettingDefinition()
          ..displayProperties = json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['displayProperties'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyDestinationBubbleSettingDefinitionToJson(
        DestinyDestinationBubbleSettingDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
    };
