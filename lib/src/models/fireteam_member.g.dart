// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamMember _$FireteamMemberFromJson(Map<String, dynamic> json) {
  return FireteamMember()
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..characterId = json['characterId'] as String
    ..dateJoined = json['dateJoined'] as String
    ..hasMicrophone = json['hasMicrophone'] as bool
    ..lastPlatformInviteAttemptDate =
        json['lastPlatformInviteAttemptDate'] as String
    ..lastPlatformInviteAttemptResult =
        json['lastPlatformInviteAttemptResult'] as int;
}

Map<String, dynamic> _$FireteamMemberToJson(FireteamMember instance) =>
    <String, dynamic>{
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'characterId': instance.characterId,
      'dateJoined': instance.dateJoined,
      'hasMicrophone': instance.hasMicrophone,
      'lastPlatformInviteAttemptDate': instance.lastPlatformInviteAttemptDate,
      'lastPlatformInviteAttemptResult':
          instance.lastPlatformInviteAttemptResult
    };
