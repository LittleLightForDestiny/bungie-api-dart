// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_potential_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupPotentialMember _$GroupPotentialMemberFromJson(Map<String, dynamic> json) {
  return GroupPotentialMember()
    ..potentialStatus = json['potentialStatus'] as int
    ..groupId = json['groupId'] as String
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : GroupUserInfoCard.fromJson(
            json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..joinDate = json['joinDate'] as String;
}

Map<String, dynamic> _$GroupPotentialMemberToJson(
        GroupPotentialMember instance) =>
    <String, dynamic>{
      'potentialStatus': instance.potentialStatus,
      'groupId': instance.groupId,
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'joinDate': instance.joinDate
    };
