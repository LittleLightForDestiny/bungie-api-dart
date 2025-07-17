// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformFriend _$PlatformFriendFromJson(Map<String, dynamic> json) =>
    PlatformFriend()
      ..platformDisplayName = json['platformDisplayName'] as String?
      ..friendPlatform = decodePlatformFriendType(json['friendPlatform'])
      ..destinyMembershipId = json['destinyMembershipId'] as String?
      ..destinyMembershipType = (json['destinyMembershipType'] as num?)?.toInt()
      ..bungieNetMembershipId = json['bungieNetMembershipId'] as String?
      ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
      ..bungieGlobalDisplayNameCode =
          (json['bungieGlobalDisplayNameCode'] as num?)?.toInt();

Map<String, dynamic> _$PlatformFriendToJson(PlatformFriend instance) =>
    <String, dynamic>{
      'platformDisplayName': instance.platformDisplayName,
      'friendPlatform': encodePlatformFriendType(instance.friendPlatform),
      'destinyMembershipId': instance.destinyMembershipId,
      'destinyMembershipType': instance.destinyMembershipType,
      'bungieNetMembershipId': instance.bungieNetMembershipId,
      'bungieGlobalDisplayName': instance.bungieGlobalDisplayName,
      'bungieGlobalDisplayNameCode': instance.bungieGlobalDisplayNameCode,
    };
