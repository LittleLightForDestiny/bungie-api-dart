// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) {
  return GroupResponse()
    ..detail = json['detail'] == null
        ? null
        : GroupV2.fromJson(json['detail'] as Map<String, dynamic>)
    ..founder = json['founder'] == null
        ? null
        : GroupMember.fromJson(json['founder'] as Map<String, dynamic>)
    ..alliedIds = (json['alliedIds'] as List)?.map((e) => e as String)?.toList()
    ..parentGroup = json['parentGroup'] == null
        ? null
        : GroupV2.fromJson(json['parentGroup'] as Map<String, dynamic>)
    ..allianceStatus = json['allianceStatus'] as int
    ..groupJoinInviteCount = json['groupJoinInviteCount'] as int
    ..currentUserMemberMap =
        (json['currentUserMemberMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k,
          e == null ? null : GroupMember.fromJson(e as Map<String, dynamic>)),
    )
    ..currentUserPotentialMemberMap =
        (json['currentUserPotentialMemberMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : GroupPotentialMember.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$GroupResponseToJson(GroupResponse instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'founder': instance.founder,
      'alliedIds': instance.alliedIds,
      'parentGroup': instance.parentGroup,
      'allianceStatus': instance.allianceStatus,
      'groupJoinInviteCount': instance.groupJoinInviteCount,
      'currentUserMemberMap': instance.currentUserMemberMap,
      'currentUserPotentialMemberMap': instance.currentUserPotentialMemberMap
    };
