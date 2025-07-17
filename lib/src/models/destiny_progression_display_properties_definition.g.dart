// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_display_properties_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionDisplayPropertiesDefinition
_$DestinyProgressionDisplayPropertiesDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyProgressionDisplayPropertiesDefinition()
      ..displayUnitsName = json['displayUnitsName'] as String?
      ..description = json['description'] as String?
      ..name = json['name'] as String?
      ..icon = json['icon'] as String?
      ..iconSequences =
          (json['iconSequences'] as List<dynamic>?)
              ?.map(
                (e) => DestinyIconSequenceDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..highResIcon = json['highResIcon'] as String?
      ..hasIcon = json['hasIcon'] as bool?;

Map<String, dynamic> _$DestinyProgressionDisplayPropertiesDefinitionToJson(
  DestinyProgressionDisplayPropertiesDefinition instance,
) => <String, dynamic>{
  'displayUnitsName': instance.displayUnitsName,
  'description': instance.description,
  'name': instance.name,
  'icon': instance.icon,
  'iconSequences': instance.iconSequences?.map((e) => e.toJson()).toList(),
  'highResIcon': instance.highResIcon,
  'hasIcon': instance.hasIcon,
};
