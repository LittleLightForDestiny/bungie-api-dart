// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingCategories _$TrendingCategoriesFromJson(Map<String, dynamic> json) {
  return TrendingCategories()
    ..categories = (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : TrendingCategory.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TrendingCategoriesToJson(TrendingCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
