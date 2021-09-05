// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_categories_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorCategoriesComponent _$DestinyVendorCategoriesComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorCategoriesComponent()
    ..categories = (json['categories'] as List<dynamic>?)
        ?.map((e) => DestinyVendorCategory.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyVendorCategoriesComponentToJson(
        DestinyVendorCategoriesComponent instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
