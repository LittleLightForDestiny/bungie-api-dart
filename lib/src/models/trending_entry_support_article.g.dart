// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_support_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntrySupportArticle _$TrendingEntrySupportArticleFromJson(
    Map<String, dynamic> json) {
  return TrendingEntrySupportArticle()
    ..article = json['article'] == null
        ? null
        : ContentItemPublicContract.fromJson(
            json['article'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingEntrySupportArticleToJson(
        TrendingEntrySupportArticle instance) =>
    <String, dynamic>{
      'article': instance.article,
    };
