// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformFriend _$PlatformFriendFromJson(Map<String, dynamic> json) {
  return PlatformFriend()
    ..platformDisplayName = json['platformDisplayName'] as String?
    ..friendPlatform = _$enumDecodeNullable(
        _$PlatformFriendTypeEnumMap, json['friendPlatform'],
        unknownValue: PlatformFriendType.ProtectedInvalidEnumValue)
    ..destinyMembershipId = json['destinyMembershipId'] as String?
    ..destinyMembershipType = json['destinyMembershipType'] as int?
    ..bungieNetMembershipId = json['bungieNetMembershipId'] as String?
    ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
    ..bungieGlobalDisplayNameCode = json['bungieGlobalDisplayNameCode'] as int?;
}

Map<String, dynamic> _$PlatformFriendToJson(PlatformFriend instance) =>
    <String, dynamic>{
      'platformDisplayName': instance.platformDisplayName,
      'friendPlatform': _$PlatformFriendTypeEnumMap[instance.friendPlatform],
      'destinyMembershipId': instance.destinyMembershipId,
      'destinyMembershipType': instance.destinyMembershipType,
      'bungieNetMembershipId': instance.bungieNetMembershipId,
      'bungieGlobalDisplayName': instance.bungieGlobalDisplayName,
      'bungieGlobalDisplayNameCode': instance.bungieGlobalDisplayNameCode,
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

const _$PlatformFriendTypeEnumMap = {
  PlatformFriendType.Unknown: 0,
  PlatformFriendType.Xbox: 1,
  PlatformFriendType.PSN: 2,
  PlatformFriendType.Steam: 3,
  PlatformFriendType.ProtectedInvalidEnumValue: 999999999,
};
