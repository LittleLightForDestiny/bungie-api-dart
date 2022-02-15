// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cross_save_user_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrossSaveUserMembership _$CrossSaveUserMembershipFromJson(
        Map<String, dynamic> json) =>
    CrossSaveUserMembership()
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

Map<String, dynamic> _$CrossSaveUserMembershipToJson(
        CrossSaveUserMembership instance) =>
    <String, dynamic>{
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
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
