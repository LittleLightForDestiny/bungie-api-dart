// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMembership _$GroupMembershipFromJson(Map<String, dynamic> json) {
  return GroupMembership()
    ..member = json['member'] == null
        ? null
        : GroupMember.fromJson(json['member'] as Map<String, dynamic>)
    ..group = json['group'] == null
        ? null
        : GroupV2.fromJson(json['group'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GroupMembershipToJson(GroupMembership instance) =>
    <String, dynamic>{'member': instance.member, 'group': instance.group};
