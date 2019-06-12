// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_leave_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMemberLeaveResult _$GroupMemberLeaveResultFromJson(
    Map<String, dynamic> json) {
  return GroupMemberLeaveResult()
    ..group = json['group'] == null
        ? null
        : GroupV2.fromJson(json['group'] as Map<String, dynamic>)
    ..groupDeleted = json['groupDeleted'] as bool;
}

Map<String, dynamic> _$GroupMemberLeaveResultToJson(
        GroupMemberLeaveResult instance) =>
    <String, dynamic>{
      'group': instance.group,
      'groupDeleted': instance.groupDeleted
    };
