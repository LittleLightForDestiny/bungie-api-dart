// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_potential_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupPotentialMember _$GroupPotentialMemberFromJson(
  Map<String, dynamic> json,
) =>
    GroupPotentialMember()
      ..potentialStatus = decodeGroupPotentialMemberStatus(
        json['potentialStatus'],
      )
      ..groupId = json['groupId'] as String?
      ..destinyUserInfo =
          json['destinyUserInfo'] == null
              ? null
              : GroupUserInfoCard.fromJson(
                json['destinyUserInfo'] as Map<String, dynamic>,
              )
      ..bungieNetUserInfo =
          json['bungieNetUserInfo'] == null
              ? null
              : UserInfoCard.fromJson(
                json['bungieNetUserInfo'] as Map<String, dynamic>,
              )
      ..joinDate = json['joinDate'] as String?;

Map<String, dynamic> _$GroupPotentialMemberToJson(
  GroupPotentialMember instance,
) => <String, dynamic>{
  'potentialStatus': encodeGroupPotentialMemberStatus(instance.potentialStatus),
  'groupId': instance.groupId,
  'destinyUserInfo': instance.destinyUserInfo?.toJson(),
  'bungieNetUserInfo': instance.bungieNetUserInfo?.toJson(),
  'joinDate': instance.joinDate,
};
