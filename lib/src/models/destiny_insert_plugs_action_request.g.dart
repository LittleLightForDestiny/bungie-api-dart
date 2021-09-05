// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plugs_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugsActionRequest _$DestinyInsertPlugsActionRequestFromJson(
    Map<String, dynamic> json) {
  return DestinyInsertPlugsActionRequest()
    ..actionToken = json['actionToken'] as String?
    ..itemInstanceId = json['itemInstanceId'] as String?
    ..plug = json['plug'] == null
        ? null
        : DestinyInsertPlugsRequestEntry.fromJson(
            json['plug'] as Map<String, dynamic>)
    ..characterId = json['characterId'] as String?
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyInsertPlugsActionRequestToJson(
        DestinyInsertPlugsActionRequest instance) =>
    <String, dynamic>{
      'actionToken': instance.actionToken,
      'itemInstanceId': instance.itemInstanceId,
      'plug': instance.plug,
      'characterId': instance.characterId,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
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
