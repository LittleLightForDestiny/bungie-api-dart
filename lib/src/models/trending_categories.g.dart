// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingCategories _$TrendingCategoriesFromJson(Map<String, dynamic> json) =>
    TrendingCategories()
      ..categories = (json['categories'] as List<dynamic>?)
          ?.map((e) => TrendingCategory.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TrendingCategoriesToJson(TrendingCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
    };
