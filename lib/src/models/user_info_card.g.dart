// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoCard _$UserInfoCardFromJson(Map<String, dynamic> json) {
  return UserInfoCard()
    ..supplementalDisplayName = json['supplementalDisplayName'] as String?
    ..iconPath = json['iconPath'] as String?
    ..crossSaveOverride = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['crossSaveOverride'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..applicableMembershipTypes =
        (json['applicableMembershipTypes'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$BungieMembershipTypeEnumMap, e))
            .toList()
    ..isPublic = json['isPublic'] as bool?
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..membershipId = json['membershipId'] as String?
    ..displayName = json['displayName'] as String?
    ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
    ..bungieGlobalDisplayNameCode = json['bungieGlobalDisplayNameCode'] as int?;
}

Map<String, dynamic> _$UserInfoCardToJson(UserInfoCard instance) =>
    <String, dynamic>{
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride':
          _$BungieMembershipTypeEnumMap[instance.crossSaveOverride],
      'applicableMembershipTypes': instance.applicableMembershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e])
          .toList(),
      'isPublic': instance.isPublic,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
      'membershipId': instance.membershipId,
      'displayName': instance.displayName,
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
