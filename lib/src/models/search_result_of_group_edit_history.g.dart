// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_group_edit_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfGroupEditHistory _$SearchResultOfGroupEditHistoryFromJson(
  Map<String, dynamic> json,
) =>
    SearchResultOfGroupEditHistory()
      ..results =
          (json['results'] as List<dynamic>?)
              ?.map((e) => GroupEditHistory.fromJson(e as Map<String, dynamic>))
              .toList()
      ..totalResults = (json['totalResults'] as num?)?.toInt()
      ..hasMore = json['hasMore'] as bool?
      ..query =
          json['query'] == null
              ? null
              : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultOfGroupEditHistoryToJson(
  SearchResultOfGroupEditHistory instance,
) => <String, dynamic>{
  'results': instance.results?.map((e) => e.toJson()).toList(),
  'totalResults': instance.totalResults,
  'hasMore': instance.hasMore,
  'query': instance.query?.toJson(),
  'replacementContinuationToken': instance.replacementContinuationToken,
  'useTotalResults': instance.useTotalResults,
};
