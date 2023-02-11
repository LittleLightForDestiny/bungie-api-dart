// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieFriend _$BungieFriendFromJson(Map<String, dynamic> json) => BungieFriend()
  ..lastSeenAsMembershipId = json['lastSeenAsMembershipId'] as String?
  ..lastSeenAsBungieMembershipType =
      decodeBungieMembershipType(json['lastSeenAsBungieMembershipType'])
  ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
  ..bungieGlobalDisplayNameCode = json['bungieGlobalDisplayNameCode'] as int?
  ..onlineStatus = decodePresenceStatus(json['onlineStatus'])
  ..onlineTitle = json['onlineTitle'] == null
      ? null
      : PresenceOnlineStateFlags.fromJson(json['onlineTitle'] as int)
  ..relationship = decodeFriendRelationshipState(json['relationship'])
  ..bungieNetUser = json['bungieNetUser'] == null
      ? null
      : GeneralUser.fromJson(json['bungieNetUser'] as Map<String, dynamic>);

Map<String, dynamic> _$BungieFriendToJson(BungieFriend instance) =>
    <String, dynamic>{
      'lastSeenAsMembershipId': instance.lastSeenAsMembershipId,
      'lastSeenAsBungieMembershipType':
          encodeBungieMembershipType(instance.lastSeenAsBungieMembershipType),
      'bungieGlobalDisplayName': instance.bungieGlobalDisplayName,
      'bungieGlobalDisplayNameCode': instance.bungieGlobalDisplayNameCode,
      'onlineStatus': encodePresenceStatus(instance.onlineStatus),
      'onlineTitle': instance.onlineTitle?.toJson(),
      'relationship': encodeFriendRelationshipState(instance.relationship),
      'bungieNetUser': instance.bungieNetUser?.toJson(),
    };
