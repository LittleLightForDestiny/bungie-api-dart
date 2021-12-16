// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingCategory _$TrendingCategoryFromJson(Map<String, dynamic> json) {
  return TrendingCategory()
    ..categoryName = json['categoryName'] as String?
    ..entries = json['entries'] == null
        ? null
        : SearchResultOfTrendingEntry.fromJson(
            json['entries'] as Map<String, dynamic>)
    ..categoryId = json['categoryId'] as String?;
}

Map<String, dynamic> _$TrendingCategoryToJson(TrendingCategory instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'entries': instance.entries,
      'categoryId': instance.categoryId,
    };
