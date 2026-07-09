// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult()
  ..totalResults = (json['totalResults'] as num?)?.toInt()
  ..hasMore = json['hasMore'] as bool?
  ..query = json['query'] == null
      ? null
      : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
  ..replacementContinuationToken =
      json['replacementContinuationToken'] as String?
  ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query?.toJson(),
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
