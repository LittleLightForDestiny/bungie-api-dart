// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) =>
    GroupResponse()
      ..detail =
          json['detail'] == null
              ? null
              : GroupV2.fromJson(json['detail'] as Map<String, dynamic>)
      ..founder =
          json['founder'] == null
              ? null
              : GroupMember.fromJson(json['founder'] as Map<String, dynamic>)
      ..alliedIds =
          (json['alliedIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..parentGroup =
          json['parentGroup'] == null
              ? null
              : GroupV2.fromJson(json['parentGroup'] as Map<String, dynamic>)
      ..allianceStatus = decodeGroupAllianceStatus(json['allianceStatus'])
      ..groupJoinInviteCount = (json['groupJoinInviteCount'] as num?)?.toInt()
      ..currentUserMembershipsInactiveForDestiny =
          json['currentUserMembershipsInactiveForDestiny'] as bool?
      ..currentUserMemberMap =
          (json['currentUserMemberMap'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, GroupMember.fromJson(e as Map<String, dynamic>)),
          )
      ..currentUserPotentialMemberMap =
          (json['currentUserPotentialMemberMap'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              GroupPotentialMember.fromJson(e as Map<String, dynamic>),
            ),
          );

Map<String, dynamic> _$GroupResponseToJson(GroupResponse instance) =>
    <String, dynamic>{
      'detail': instance.detail?.toJson(),
      'founder': instance.founder?.toJson(),
      'alliedIds': instance.alliedIds,
      'parentGroup': instance.parentGroup?.toJson(),
      'allianceStatus': encodeGroupAllianceStatus(instance.allianceStatus),
      'groupJoinInviteCount': instance.groupJoinInviteCount,
      'currentUserMembershipsInactiveForDestiny':
          instance.currentUserMembershipsInactiveForDestiny,
      'currentUserMemberMap': instance.currentUserMemberMap?.map(
        (k, e) => MapEntry(k, e.toJson()),
      ),
      'currentUserPotentialMemberMap': instance.currentUserPotentialMemberMap
          ?.map((k, e) => MapEntry(k, e.toJson())),
    };
