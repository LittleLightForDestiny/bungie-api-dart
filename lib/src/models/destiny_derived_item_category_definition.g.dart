// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_derived_item_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDerivedItemCategoryDefinition
    _$DestinyDerivedItemCategoryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyDerivedItemCategoryDefinition()
    ..categoryDescription = json['categoryDescription'] as String
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyDerivedItemDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyDerivedItemCategoryDefinitionToJson(
        DestinyDerivedItemCategoryDefinition instance) =>
    <String, dynamic>{
      'categoryDescription': instance.categoryDescription,
      'items': instance.items,
    };
