// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_display_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDisplayCategoryDefinition _$DestinyDisplayCategoryDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyDisplayCategoryDefinition()
      ..index = (json['index'] as num?)?.toInt()
      ..identifier = json['identifier'] as String?
      ..displayCategoryHash = (json['displayCategoryHash'] as num?)?.toInt()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..displayInBanner = json['displayInBanner'] as bool?
      ..progressionHash = (json['progressionHash'] as num?)?.toInt()
      ..sortOrder = decodeVendorDisplayCategorySortOrder(json['sortOrder'])
      ..displayStyleHash = (json['displayStyleHash'] as num?)?.toInt()
      ..displayStyleIdentifier = json['displayStyleIdentifier'] as String?;

Map<String, dynamic> _$DestinyDisplayCategoryDefinitionToJson(
  DestinyDisplayCategoryDefinition instance,
) => <String, dynamic>{
  'index': instance.index,
  'identifier': instance.identifier,
  'displayCategoryHash': instance.displayCategoryHash,
  'displayProperties': instance.displayProperties?.toJson(),
  'displayInBanner': instance.displayInBanner,
  'progressionHash': instance.progressionHash,
  'sortOrder': encodeVendorDisplayCategorySortOrder(instance.sortOrder),
  'displayStyleHash': instance.displayStyleHash,
  'displayStyleIdentifier': instance.displayStyleIdentifier,
};
