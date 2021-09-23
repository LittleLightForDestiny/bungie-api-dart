// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieFriend _$BungieFriendFromJson(Map<String, dynamic> json) {
  return BungieFriend()
    ..lastSeenAsMembershipId = json['lastSeenAsMembershipId'] as String?
    ..lastSeenAsBungieMembershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['lastSeenAsBungieMembershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
    ..bungieGlobalDisplayNameCode = json['bungieGlobalDisplayNameCode'] as int?
    ..onlineStatus = _$enumDecodeNullable(
        _$PresenceStatusEnumMap, json['onlineStatus'],
        unknownValue: PresenceStatus.ProtectedInvalidEnumValue)
    ..onlineTitle = json['onlineTitle'] == null
        ? null
        : PresenceOnlineStateFlags.fromJson(json['onlineTitle'] as int)
    ..relationship = _$enumDecodeNullable(
        _$FriendRelationshipStateEnumMap, json['relationship'],
        unknownValue: FriendRelationshipState.ProtectedInvalidEnumValue)
    ..bungieNetUser = json['bungieNetUser'] == null
        ? null
        : GeneralUser.fromJson(json['bungieNetUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BungieFriendToJson(BungieFriend instance) =>
    <String, dynamic>{
      'lastSeenAsMembershipId': instance.lastSeenAsMembershipId,
      'lastSeenAsBungieMembershipType': _$BungieMembershipTypeEnumMap[
          instance.lastSeenAsBungieMembershipType],
      'bungieGlobalDisplayName': instance.bungieGlobalDisplayName,
      'bungieGlobalDisplayNameCode': instance.bungieGlobalDisplayNameCode,
      'onlineStatus': _$PresenceStatusEnumMap[instance.onlineStatus],
      'onlineTitle': instance.onlineTitle,
      'relationship': _$FriendRelationshipStateEnumMap[instance.relationship],
      'bungieNetUser': instance.bungieNetUser,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};

const _$PresenceStatusEnumMap = {
  PresenceStatus.OfflineOrUnknown: 0,
  PresenceStatus.Online: 1,
  PresenceStatus.ProtectedInvalidEnumValue: 999999999,
};

const _$FriendRelationshipStateEnumMap = {
  FriendRelationshipState.Unknown: 0,
  FriendRelationshipState.Friend: 1,
  FriendRelationshipState.IncomingRequest: 2,
  FriendRelationshipState.OutgoingRequest: 3,
  FriendRelationshipState.ProtectedInvalidEnumValue: 999999999,
};
