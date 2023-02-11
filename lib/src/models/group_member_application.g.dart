// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMemberApplication _$GroupMemberApplicationFromJson(
        Map<String, dynamic> json) =>
    GroupMemberApplication()
      ..groupId = json['groupId'] as String?
      ..creationDate = json['creationDate'] as String?
      ..resolveState = decodeGroupApplicationResolveState(json['resolveState'])
      ..resolveDate = json['resolveDate'] as String?
      ..resolvedByMembershipId = json['resolvedByMembershipId'] as String?
      ..requestMessage = json['requestMessage'] as String?
      ..resolveMessage = json['resolveMessage'] as String?
      ..destinyUserInfo = json['destinyUserInfo'] == null
          ? null
          : GroupUserInfoCard.fromJson(
              json['destinyUserInfo'] as Map<String, dynamic>)
      ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
          ? null
          : UserInfoCard.fromJson(
              json['bungieNetUserInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupMemberApplicationToJson(
        GroupMemberApplication instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'creationDate': instance.creationDate,
      'resolveState': encodeGroupApplicationResolveState(instance.resolveState),
      'resolveDate': instance.resolveDate,
      'resolvedByMembershipId': instance.resolvedByMembershipId,
      'requestMessage': instance.requestMessage,
      'resolveMessage': instance.resolveMessage,
      'destinyUserInfo': instance.destinyUserInfo?.toJson(),
      'bungieNetUserInfo': instance.bungieNetUserInfo?.toJson(),
    };
