// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupQuery _$GroupQueryFromJson(Map<String, dynamic> json) => GroupQuery()
  ..name = json['name'] as String?
  ..groupType = decodeGroupType(json['groupType'])
  ..creationDate = decodeGroupDateRange(json['creationDate'])
  ..sortBy = decodeGroupSortBy(json['sortBy'])
  ..groupMemberCountFilter = json['groupMemberCountFilter'] as int?
  ..localeFilter = json['localeFilter'] as String?
  ..tagText = json['tagText'] as String?
  ..itemsPerPage = json['itemsPerPage'] as int?
  ..currentPage = json['currentPage'] as int?
  ..requestContinuationToken = json['requestContinuationToken'] as String?;

Map<String, dynamic> _$GroupQueryToJson(GroupQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'groupType': encodeGroupType(instance.groupType),
      'creationDate': encodeGroupDateRange(instance.creationDate),
      'sortBy': encodeGroupSortBy(instance.sortBy),
      'groupMemberCountFilter': instance.groupMemberCountFilter,
      'localeFilter': instance.localeFilter,
      'tagText': instance.tagText,
      'itemsPerPage': instance.itemsPerPage,
      'currentPage': instance.currentPage,
      'requestContinuationToken': instance.requestContinuationToken,
    };
