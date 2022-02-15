// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_for_member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGroupsForMemberResponse _$GetGroupsForMemberResponseFromJson(
        Map<String, dynamic> json) =>
    GetGroupsForMemberResponse()
      ..areAllMembershipsInactive =
          (json['areAllMembershipsInactive'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      )
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => GroupMembership.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalResults = json['totalResults'] as int?
      ..hasMore = json['hasMore'] as bool?
      ..query = json['query'] == null
          ? null
          : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$GetGroupsForMemberResponseToJson(
        GetGroupsForMemberResponse instance) =>
    <String, dynamic>{
      'areAllMembershipsInactive': instance.areAllMembershipsInactive,
      'results': instance.results,
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query,
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
