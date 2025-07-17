// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_rss_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticleRssResponse _$NewsArticleRssResponseFromJson(
  Map<String, dynamic> json,
) =>
    NewsArticleRssResponse()
      ..currentPaginationToken =
          (json['CurrentPaginationToken'] as num?)?.toInt()
      ..nextPaginationToken = (json['NextPaginationToken'] as num?)?.toInt()
      ..resultCountThisPage = (json['ResultCountThisPage'] as num?)?.toInt()
      ..newsArticles =
          (json['NewsArticles'] as List<dynamic>?)
              ?.map(
                (e) => NewsArticleRssItem.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..categoryFilter = json['CategoryFilter'] as String?
      ..pagerAction = json['PagerAction'] as String?;

Map<String, dynamic> _$NewsArticleRssResponseToJson(
  NewsArticleRssResponse instance,
) => <String, dynamic>{
  'CurrentPaginationToken': instance.currentPaginationToken,
  'NextPaginationToken': instance.nextPaginationToken,
  'ResultCountThisPage': instance.resultCountThisPage,
  'NewsArticles': instance.newsArticles?.map((e) => e.toJson()).toList(),
  'CategoryFilter': instance.categoryFilter,
  'PagerAction': instance.pagerAction,
};
