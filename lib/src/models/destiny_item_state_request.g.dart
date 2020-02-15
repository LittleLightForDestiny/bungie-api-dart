// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_state_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemStateRequest _$DestinyItemStateRequestFromJson(
    Map<String, dynamic> json) {
  return DestinyItemStateRequest()
    ..state = json['state'] as bool
    ..itemId = json['itemId'] as String
    ..characterId = json['characterId'] as String
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyItemStateRequestToJson(
        DestinyItemStateRequest instance) =>
    <String, dynamic>{
      'state': instance.state,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
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
