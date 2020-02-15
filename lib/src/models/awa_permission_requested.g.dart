// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_permission_requested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaPermissionRequested _$AwaPermissionRequestedFromJson(
    Map<String, dynamic> json) {
  return AwaPermissionRequested()
    ..type = _$enumDecodeNullable(_$AwaTypeEnumMap, json['type'],
        unknownValue: AwaType.ProtectedInvalidEnumValue)
    ..affectedItemId = json['affectedItemId'] as String
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..characterId = json['characterId'] as String;
}

Map<String, dynamic> _$AwaPermissionRequestedToJson(
        AwaPermissionRequested instance) =>
    <String, dynamic>{
      'type': _$AwaTypeEnumMap[instance.type],
      'affectedItemId': instance.affectedItemId,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
      'characterId': instance.characterId,
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

const _$AwaTypeEnumMap = {
  AwaType.None: 0,
  AwaType.InsertPlugs: 1,
  AwaType.ProtectedInvalidEnumValue: 999999999,
};

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
