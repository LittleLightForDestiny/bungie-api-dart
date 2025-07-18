// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_display_properties_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDisplayPropertiesDefinition _$DestinyDisplayPropertiesDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyDisplayPropertiesDefinition()
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

Map<String, dynamic> _$DestinyDisplayPropertiesDefinitionToJson(
  DestinyDisplayPropertiesDefinition instance,
) => <String, dynamic>{
  'description': instance.description,
  'name': instance.name,
  'icon': instance.icon,
  'iconSequences': instance.iconSequences?.map((e) => e.toJson()).toList(),
  'highResIcon': instance.highResIcon,
  'hasIcon': instance.hasIcon,
};
