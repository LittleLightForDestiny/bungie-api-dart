// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credential_types_for_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCredentialTypesForAccountResponse
    _$GetCredentialTypesForAccountResponseFromJson(Map<String, dynamic> json) {
  return GetCredentialTypesForAccountResponse()
    ..credentialType = _$enumDecodeNullable(
        _$BungieCredentialTypeEnumMap, json['credentialType'],
        unknownValue: BungieCredentialType.ProtectedInvalidEnumValue)
    ..credentialDisplayName = json['credentialDisplayName'] as String
    ..isPublic = json['isPublic'] as bool
    ..credentialAsString = json['credentialAsString'] as String;
}

Map<String, dynamic> _$GetCredentialTypesForAccountResponseToJson(
        GetCredentialTypesForAccountResponse instance) =>
    <String, dynamic>{
      'credentialType': _$BungieCredentialTypeEnumMap[instance.credentialType],
      'credentialDisplayName': instance.credentialDisplayName,
      'isPublic': instance.isPublic,
      'credentialAsString': instance.credentialAsString,
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

const _$BungieCredentialTypeEnumMap = {
  BungieCredentialType.None: 0,
  BungieCredentialType.Xuid: 1,
  BungieCredentialType.Psnid: 2,
  BungieCredentialType.Wlid: 3,
  BungieCredentialType.Fake: 4,
  BungieCredentialType.Facebook: 5,
  BungieCredentialType.Google: 8,
  BungieCredentialType.Windows: 9,
  BungieCredentialType.DemonId: 10,
  BungieCredentialType.SteamId: 12,
  BungieCredentialType.BattleNetId: 14,
  BungieCredentialType.StadiaId: 16,
  BungieCredentialType.TwitchId: 18,
  BungieCredentialType.ProtectedInvalidEnumValue: 999999999,
};
