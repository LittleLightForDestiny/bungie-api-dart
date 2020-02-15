// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_joinability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryJoinability
    _$DestinyProfileTransitoryJoinabilityFromJson(Map<String, dynamic> json) {
  return DestinyProfileTransitoryJoinability()
    ..openSlots = json['openSlots'] as int
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

const _$DestinyGamePrivacySettingEnumMap = {
  DestinyGamePrivacySetting.Open: 0,
  DestinyGamePrivacySetting.ClanAndFriendsOnly: 1,
  DestinyGamePrivacySetting.FriendsOnly: 2,
  DestinyGamePrivacySetting.InvitationOnly: 3,
  DestinyGamePrivacySetting.Closed: 4,
  DestinyGamePrivacySetting.ProtectedInvalidEnumValue: 999999999,
};
