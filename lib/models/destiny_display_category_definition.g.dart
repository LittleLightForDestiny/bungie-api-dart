// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_display_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDisplayCategoryDefinition _$DestinyDisplayCategoryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyDisplayCategoryDefinition()
    ..identifier = json['identifier'] as String
    ..displayCategoryHash = json['displayCategoryHash'] as int
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..displayInBanner = json['displayInBanner'] as bool
    ..progressionHash = json['progressionHash'] as int
    ..sortOrder = json['sortOrder'] as int
    ..displayStyleHash = json['displayStyleHash'] as int
    ..displayStyleIdentifier = json['displayStyleIdentifier'] as String;
}

Map<String, dynamic> _$DestinyDisplayCategoryDefinitionToJson(
        DestinyDisplayCategoryDefinition instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'displayCategoryHash': instance.displayCategoryHash,
      'displayProperties': instance.displayProperties,
      'displayInBanner': instance.displayInBanner,
      'progressionHash': instance.progressionHash,
      'sortOrder': instance.sortOrder,
      'displayStyleHash': instance.displayStyleHash,
      'displayStyleIdentifier': instance.displayStyleIdentifier
    };
