// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoCard _$UserInfoCardFromJson(Map<String, dynamic> json) {
  return UserInfoCard()
    ..supplementalDisplayName = json['supplementalDisplayName'] as String
    ..iconPath = json['iconPath'] as String
    ..crossSaveOverride = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['crossSaveOverride'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..applicableMembershipTypes = (json['applicableMembershipTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$BungieMembershipTypeEnumMap, e))
        ?.toList()
    ..isPublic = json['isPublic'] as bool
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$UserInfoCardToJson(UserInfoCard instance) =>
    <String, dynamic>{
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride':
          _$BungieMembershipTypeEnumMap[instance.crossSaveOverride],
      'applicableMembershipTypes': instance.applicableMembershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e])
          ?.toList(),
      'isPublic': instance.isPublic,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
      'membershipId': instance.membershipId,
      'displayName': instance.displayName,
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
