// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamMember _$FireteamMemberFromJson(Map<String, dynamic> json) {
  return FireteamMember()
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : FireteamUserInfoCard.fromJson(
            json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..characterId = json['characterId'] as String
    ..dateJoined = json['dateJoined'] as String
    ..hasMicrophone = json['hasMicrophone'] as bool
    ..lastPlatformInviteAttemptDate =
        json['lastPlatformInviteAttemptDate'] as String
    ..lastPlatformInviteAttemptResult = _$enumDecodeNullable(
        _$FireteamPlatformInviteResultEnumMap,
        json['lastPlatformInviteAttemptResult'],
        unknownValue: FireteamPlatformInviteResult.None);
}

Map<String, dynamic> _$FireteamMemberToJson(FireteamMember instance) =>
    <String, dynamic>{
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'characterId': instance.characterId,
      'dateJoined': instance.dateJoined,
      'hasMicrophone': instance.hasMicrophone,
      'lastPlatformInviteAttemptDate': instance.lastPlatformInviteAttemptDate,
      'lastPlatformInviteAttemptResult': _$FireteamPlatformInviteResultEnumMap[
          instance.lastPlatformInviteAttemptResult],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$FireteamPlatformInviteResultEnumMap = {
  FireteamPlatformInviteResult.None: 0,
  FireteamPlatformInviteResult.Success: 1,
  FireteamPlatformInviteResult.AlreadyInFireteam: 2,
  FireteamPlatformInviteResult.Throttled: 3,
  FireteamPlatformInviteResult.ServiceError: 4,
};
