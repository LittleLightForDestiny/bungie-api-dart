// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileUserInfoCard _$DestinyProfileUserInfoCardFromJson(
        Map<String, dynamic> json) =>
    DestinyProfileUserInfoCard()
      ..dateLastPlayed = json['dateLastPlayed'] as String?
      ..isOverridden = json['isOverridden'] as bool?
      ..isCrossSavePrimary = json['isCrossSavePrimary'] as bool?
      ..platformSilver = json['platformSilver'] == null
          ? null
          : DestinyPlatformSilverComponent.fromJson(
              json['platformSilver'] as Map<String, dynamic>)
      ..unpairedGameVersions = json['unpairedGameVersions'] as int?
      ..supplementalDisplayName = json['supplementalDisplayName'] as String?
      ..iconPath = json['iconPath'] as String?
      ..crossSaveOverride =
          decodeBungieMembershipType(json['crossSaveOverride'])
      ..applicableMembershipTypes =
          (json['applicableMembershipTypes'] as List<dynamic>?)
              ?.map((e) => _$enumDecode(_$BungieMembershipTypeEnumMap, e))
              .toList()
      ..isPublic = json['isPublic'] as bool?
      ..membershipType = decodeBungieMembershipType(json['membershipType'])
      ..membershipId = json['membershipId'] as String?
      ..displayName = json['displayName'] as String?
      ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
      ..bungieGlobalDisplayNameCode =
          json['bungieGlobalDisplayNameCode'] as int?;

Map<String, dynamic> _$DestinyProfileUserInfoCardToJson(
        DestinyProfileUserInfoCard instance) =>
    <String, dynamic>{
      'dateLastPlayed': instance.dateLastPlayed,
      'isOverridden': instance.isOverridden,
      'isCrossSavePrimary': instance.isCrossSavePrimary,
      'platformSilver': instance.platformSilver?.toJson(),
      'unpairedGameVersions': instance.unpairedGameVersions,
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride':
          encodeBungieMembershipType(instance.crossSaveOverride),
      'applicableMembershipTypes': instance.applicableMembershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e])
          .toList(),
      'isPublic': instance.isPublic,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
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

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerEgs: 6,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
