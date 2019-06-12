// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) {
  return GroupMember()
    ..memberType = json['memberType'] as int
    ..isOnline = json['isOnline'] as bool
    ..lastOnlineStatusChange = json['lastOnlineStatusChange'] as String
    ..groupId = json['groupId'] as String
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..joinDate = json['joinDate'] as String;
}

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) =>
    <String, dynamic>{
      'memberType': instance.memberType,
      'isOnline': instance.isOnline,
      'lastOnlineStatusChange': instance.lastOnlineStatusChange,
      'groupId': instance.groupId,
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'joinDate': instance.joinDate
    };
