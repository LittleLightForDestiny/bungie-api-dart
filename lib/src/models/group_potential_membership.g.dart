// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_potential_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupPotentialMembership _$GroupPotentialMembershipFromJson(
  Map<String, dynamic> json,
) =>
    GroupPotentialMembership()
      ..member =
          json['member'] == null
              ? null
              : GroupPotentialMember.fromJson(
                json['member'] as Map<String, dynamic>,
              )
      ..group =
          json['group'] == null
              ? null
              : GroupV2.fromJson(json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupPotentialMembershipToJson(
  GroupPotentialMembership instance,
) => <String, dynamic>{
  'member': instance.member?.toJson(),
  'group': instance.group?.toJson(),
};
