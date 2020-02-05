// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_display_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDisplayCategoryDefinition _$DestinyDisplayCategoryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyDisplayCategoryDefinition()
    ..index = json['index'] as int
    ..identifier = json['identifier'] as String
    ..displayCategoryHash = json['displayCategoryHash'] as int
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..displayInBanner = json['displayInBanner'] as bool
    ..progressionHash = json['progressionHash'] as int
    ..sortOrder = _$enumDecodeNullable(
        _$VendorDisplayCategorySortOrderEnumMap, json['sortOrder'],
        unknownValue: VendorDisplayCategorySortOrder.Default)
    ..displayStyleHash = json['displayStyleHash'] as int
    ..displayStyleIdentifier = json['displayStyleIdentifier'] as String;
}

Map<String, dynamic> _$DestinyDisplayCategoryDefinitionToJson(
        DestinyDisplayCategoryDefinition instance) =>
    <String, dynamic>{
      'index': instance.index,
      'identifier': instance.identifier,
      'displayCategoryHash': instance.displayCategoryHash,
      'displayProperties': instance.displayProperties,
      'displayInBanner': instance.displayInBanner,
      'progressionHash': instance.progressionHash,
      'sortOrder': _$VendorDisplayCategorySortOrderEnumMap[instance.sortOrder],
      'displayStyleHash': instance.displayStyleHash,
      'displayStyleIdentifier': instance.displayStyleIdentifier,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$VendorDisplayCategorySortOrderEnumMap = {
  VendorDisplayCategorySortOrder.Default: 0,
  VendorDisplayCategorySortOrder.SortByTier: 1,
};
