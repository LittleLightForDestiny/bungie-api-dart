// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_joinability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryJoinability
    _$DestinyProfileTransitoryJoinabilityFromJson(Map<String, dynamic> json) {
  return DestinyProfileTransitoryJoinability()
    ..openSlots = json['openSlots'] as int?
    ..privacySetting = _$enumDecodeNullable(
        _$DestinyGamePrivacySettingEnumMap, json['privacySetting'],
        unknownValue: DestinyGamePrivacySetting.ProtectedInvalidEnumValue)
    ..closedReasons = json['closedReasons'] == null
        ? null
        : DestinyJoinClosedReasons.fromJson(json['closedReasons'] as int);
}

Map<String, dynamic> _$DestinyProfileTransitoryJoinabilityToJson(
        DestinyProfileTransitoryJoinability instance) =>
    <String, dynamic>{
      'openSlots': instance.openSlots,
      'privacySetting':
          _$DestinyGamePrivacySettingEnumMap[instance.privacySetting],
      'closedReasons': instance.closedReasons,
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

const _$DestinyGamePrivacySettingEnumMap = {
  DestinyGamePrivacySetting.Open: 0,
  DestinyGamePrivacySetting.ClanAndFriendsOnly: 1,
  DestinyGamePrivacySetting.FriendsOnly: 2,
  DestinyGamePrivacySetting.InvitationOnly: 3,
  DestinyGamePrivacySetting.Closed: 4,
  DestinyGamePrivacySetting.ProtectedInvalidEnumValue: 999999999,
};
