// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_display_properties_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorDisplayPropertiesDefinition
    _$DestinyVendorDisplayPropertiesDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyVendorDisplayPropertiesDefinition()
          ..largeIcon = json['largeIcon'] as String?
          ..subtitle = json['subtitle'] as String?
          ..originalIcon = json['originalIcon'] as String?
          ..requirementsDisplay =
              (json['requirementsDisplay'] as List<dynamic>?)
                  ?.map((e) =>
                      DestinyVendorRequirementDisplayEntryDefinition.fromJson(
                          e as Map<String, dynamic>))
                  .toList()
          ..smallTransparentIcon = json['smallTransparentIcon'] as String?
          ..mapIcon = json['mapIcon'] as String?
          ..largeTransparentIcon = json['largeTransparentIcon'] as String?
          ..description = json['description'] as String?
          ..name = json['name'] as String?
          ..icon = json['icon'] as String?
          ..iconSequences = (json['iconSequences'] as List<dynamic>?)
              ?.map((e) => DestinyIconSequenceDefinition.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..highResIcon = json['highResIcon'] as String?
          ..hasIcon = json['hasIcon'] as bool?;

Map<String, dynamic> _$DestinyVendorDisplayPropertiesDefinitionToJson(
        DestinyVendorDisplayPropertiesDefinition instance) =>
    <String, dynamic>{
      'largeIcon': instance.largeIcon,
      'subtitle': instance.subtitle,
      'originalIcon': instance.originalIcon,
      'requirementsDisplay': instance.requirementsDisplay,
      'smallTransparentIcon': instance.smallTransparentIcon,
      'mapIcon': instance.mapIcon,
      'largeTransparentIcon': instance.largeTransparentIcon,
      'description': instance.description,
      'name': instance.name,
      'icon': instance.icon,
      'iconSequences': instance.iconSequences,
      'highResIcon': instance.highResIcon,
      'hasIcon': instance.hasIcon,
    };
