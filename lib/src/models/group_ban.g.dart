// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_ban.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupBan _$GroupBanFromJson(Map<String, dynamic> json) {
  return GroupBan()
    ..groupId = json['groupId'] as String
    ..lastModifiedBy = json['lastModifiedBy'] == null
        ? null
        : UserInfoCard.fromJson(json['lastModifiedBy'] as Map<String, dynamic>)
    ..createdBy = json['createdBy'] == null
        ? null
        : UserInfoCard.fromJson(json['createdBy'] as Map<String, dynamic>)
    ..dateBanned = json['dateBanned'] as String
    ..dateExpires = json['dateExpires'] as String
    ..comment = json['comment'] as String
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : GroupUserInfoCard.fromJson(
            json['destinyUserInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GroupBanToJson(GroupBan instance) => <String, dynamic>{
      'groupId': instance.groupId,
      'lastModifiedBy': instance.lastModifiedBy,
      'createdBy': instance.createdBy,
      'dateBanned': instance.dateBanned,
      'dateExpires': instance.dateExpires,
      'comment': instance.comment,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'destinyUserInfo': instance.destinyUserInfo
    };
