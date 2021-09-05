// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_destiny_entity_search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfDestinyEntitySearchResultItem
    _$SearchResultOfDestinyEntitySearchResultItemFromJson(
        Map<String, dynamic> json) {
  return SearchResultOfDestinyEntitySearchResultItem()
    ..results = (json['results'] as List<dynamic>?)
        ?.map((e) =>
            DestinyEntitySearchResultItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..totalResults = json['totalResults'] as int?
    ..hasMore = json['hasMore'] as bool?
    ..query = json['query'] == null
        ? null
        : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
    ..replacementContinuationToken =
        json['replacementContinuationToken'] as String?
    ..useTotalResults = json['useTotalResults'] as bool?;
}

Map<String, dynamic> _$SearchResultOfDestinyEntitySearchResultItemToJson(
        SearchResultOfDestinyEntitySearchResultItem instance) =>
    <String, dynamic>{
      'results': instance.results,
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query,
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
