// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_rss_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticleRssResponse _$NewsArticleRssResponseFromJson(
        Map<String, dynamic> json) =>
    NewsArticleRssResponse()
      ..newsArticles = (json['NewsArticles'] as List<dynamic>?)
          ?.map((e) => NewsArticleRssItem.fromJson(e as Map<String, dynamic>))
          .toList()
      ..currentPaginationToken = json['CurrentPaginationToken'] as int?
      ..nextPaginationToken = json['NextPaginationToken'] as int?
      ..resultCountThisPage = json['ResultCountThisPage'] as int?;

Map<String, dynamic> _$NewsArticleRssResponseToJson(
        NewsArticleRssResponse instance) =>
    <String, dynamic>{
      'NewsArticles': instance.newsArticles,
      'CurrentPaginationToken': instance.currentPaginationToken,
      'NextPaginationToken': instance.nextPaginationToken,
      'ResultCountThisPage': instance.resultCountThisPage,
    };
