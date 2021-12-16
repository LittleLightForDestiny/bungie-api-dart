// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_authorization_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaAuthorizationResult _$AwaAuthorizationResultFromJson(
    Map<String, dynamic> json) {
  return AwaAuthorizationResult()
    ..userSelection = _$enumDecodeNullable(
        _$AwaUserSelectionEnumMap, json['userSelection'],
        unknownValue: AwaUserSelection.ProtectedInvalidEnumValue)
    ..responseReason = _$enumDecodeNullable(
        _$AwaResponseReasonEnumMap, json['responseReason'],
        unknownValue: AwaResponseReason.ProtectedInvalidEnumValue)
    ..developerNote = json['developerNote'] as String?
    ..actionToken = json['actionToken'] as String?
    ..maximumNumberOfUses = json['maximumNumberOfUses'] as int?
    ..validUntil = json['validUntil'] as String?
    ..type = _$enumDecodeNullable(_$AwaTypeEnumMap, json['type'],
        unknownValue: AwaType.ProtectedInvalidEnumValue)
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$AwaAuthorizationResultToJson(
        AwaAuthorizationResult instance) =>
    <String, dynamic>{
      'userSelection': _$AwaUserSelectionEnumMap[instance.userSelection],
      'responseReason': _$AwaResponseReasonEnumMap[instance.responseReason],
      'developerNote': instance.developerNote,
      'actionToken': instance.actionToken,
      'maximumNumberOfUses': instance.maximumNumberOfUses,
      'validUntil': instance.validUntil,
      'type': _$AwaTypeEnumMap[instance.type],
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

const _$AwaUserSelectionEnumMap = {
  AwaUserSelection.None: 0,
  AwaUserSelection.Rejected: 1,
  AwaUserSelection.Approved: 2,
  AwaUserSelection.ProtectedInvalidEnumValue: 999999999,
};

const _$AwaResponseReasonEnumMap = {
  AwaResponseReason.None: 0,
  AwaResponseReason.Answered: 1,
  AwaResponseReason.TimedOut: 2,
  AwaResponseReason.Replaced: 3,
  AwaResponseReason.ProtectedInvalidEnumValue: 999999999,
};

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
