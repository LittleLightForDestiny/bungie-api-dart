// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingDetail _$TrendingDetailFromJson(Map<String, dynamic> json) =>
    TrendingDetail()
      ..identifier = json['identifier'] as String?
      ..entityType = decodeTrendingEntryType(json['entityType'])
      ..news = json['news'] == null
          ? null
          : TrendingEntryNews.fromJson(json['news'] as Map<String, dynamic>)
      ..support = json['support'] == null
          ? null
          : TrendingEntrySupportArticle.fromJson(
              json['support'] as Map<String, dynamic>)
      ..destinyItem = json['destinyItem'] == null
          ? null
          : TrendingEntryDestinyItem.fromJson(
              json['destinyItem'] as Map<String, dynamic>)
      ..destinyActivity = json['destinyActivity'] == null
          ? null
          : TrendingEntryDestinyActivity.fromJson(
              json['destinyActivity'] as Map<String, dynamic>)
      ..destinyRitual = json['destinyRitual'] == null
          ? null
          : TrendingEntryDestinyRitual.fromJson(
              json['destinyRitual'] as Map<String, dynamic>)
      ..creation = json['creation'] == null
          ? null
          : TrendingEntryCommunityCreation.fromJson(
              json['creation'] as Map<String, dynamic>);

Map<String, dynamic> _$TrendingDetailToJson(TrendingDetail instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'entityType': encodeTrendingEntryType(instance.entityType),
      'news': instance.news,
      'support': instance.support,
      'destinyItem': instance.destinyItem,
      'destinyActivity': instance.destinyActivity,
      'destinyRitual': instance.destinyRitual,
      'creation': instance.creation,
    };
