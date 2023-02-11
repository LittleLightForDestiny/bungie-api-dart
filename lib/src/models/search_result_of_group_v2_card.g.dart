// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_group_v2_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfGroupV2Card _$SearchResultOfGroupV2CardFromJson(
        Map<String, dynamic> json) =>
    SearchResultOfGroupV2Card()
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => GroupV2Card.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalResults = json['totalResults'] as int?
      ..hasMore = json['hasMore'] as bool?
      ..query = json['query'] == null
          ? null
          : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultOfGroupV2CardToJson(
        SearchResultOfGroupV2Card instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query?.toJson(),
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
