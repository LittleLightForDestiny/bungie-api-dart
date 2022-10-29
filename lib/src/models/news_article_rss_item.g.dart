// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_rss_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticleRssItem _$NewsArticleRssItemFromJson(Map<String, dynamic> json) =>
    NewsArticleRssItem()
      ..title = json['Title'] as String?
      ..link = json['Link'] as String?
      ..pubDate = json['PubDate'] as String?
      ..uniqueIdentifier = json['UniqueIdentifier'] as String?
      ..description = json['Description'] as String?;

Map<String, dynamic> _$NewsArticleRssItemToJson(NewsArticleRssItem instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Link': instance.link,
      'PubDate': instance.pubDate,
      'UniqueIdentifier': instance.uniqueIdentifier,
      'Description': instance.description,
    };
