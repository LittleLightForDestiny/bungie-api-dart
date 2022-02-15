// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfGroupMember _$SearchResultOfGroupMemberFromJson(
        Map<String, dynamic> json) =>
    SearchResultOfGroupMember()
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalResults = json['totalResults'] as int?
      ..hasMore = json['hasMore'] as bool?
      ..query = json['query'] == null
          ? null
          : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultOfGroupMemberToJson(
        SearchResultOfGroupMember instance) =>
    <String, dynamic>{
      'results': instance.results,
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query,
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
