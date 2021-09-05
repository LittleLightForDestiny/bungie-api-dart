// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_category_overlay_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorCategoryOverlayDefinition
    _$DestinyVendorCategoryOverlayDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorCategoryOverlayDefinition()
    ..choiceDescription = json['choiceDescription'] as String?
    ..description = json['description'] as String?
    ..icon = json['icon'] as String?
    ..title = json['title'] as String?
    ..currencyItemHash = json['currencyItemHash'] as int?;
}

Map<String, dynamic> _$DestinyVendorCategoryOverlayDefinitionToJson(
        DestinyVendorCategoryOverlayDefinition instance) =>
    <String, dynamic>{
      'choiceDescription': instance.choiceDescription,
      'description': instance.description,
      'icon': instance.icon,
      'title': instance.title,
      'currencyItemHash': instance.currencyItemHash,
    };
