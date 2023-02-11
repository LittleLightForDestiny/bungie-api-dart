// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryNews _$TrendingEntryNewsFromJson(Map<String, dynamic> json) =>
    TrendingEntryNews()
      ..article = json['article'] == null
          ? null
          : ContentItemPublicContract.fromJson(
              json['article'] as Map<String, dynamic>);

Map<String, dynamic> _$TrendingEntryNewsToJson(TrendingEntryNews instance) =>
    <String, dynamic>{
      'article': instance.article?.toJson(),
    };
