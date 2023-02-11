// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_membership_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMembershipBase _$GroupMembershipBaseFromJson(Map<String, dynamic> json) =>
    GroupMembershipBase()
      ..group = json['group'] == null
          ? null
          : GroupV2.fromJson(json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupMembershipBaseToJson(
        GroupMembershipBase instance) =>
    <String, dynamic>{
      'group': instance.group?.toJson(),
    };
