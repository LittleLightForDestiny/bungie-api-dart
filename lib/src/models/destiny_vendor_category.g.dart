// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorCategory _$DestinyVendorCategoryFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorCategory()
      ..displayCategoryIndex = json['displayCategoryIndex'] as int?
      ..itemIndexes = (json['itemIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList();

Map<String, dynamic> _$DestinyVendorCategoryToJson(
        DestinyVendorCategory instance) =>
    <String, dynamic>{
      'displayCategoryIndex': instance.displayCategoryIndex,
      'itemIndexes': instance.itemIndexes,
    };
