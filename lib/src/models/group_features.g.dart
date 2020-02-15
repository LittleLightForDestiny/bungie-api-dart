// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupFeatures _$GroupFeaturesFromJson(Map<String, dynamic> json) {
  return GroupFeatures()
    ..maximumMembers = json['maximumMembers'] as int
    ..maximumMembershipsOfGroupType =
        json['maximumMembershipsOfGroupType'] as int
    ..capabilities = json['capabilities'] == null
        ? null
        : Capabilities.fromJson(json['capabilities'] as int)
    ..membershipTypes = (json['membershipTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$BungieMembershipTypeEnumMap, e))
        ?.toList()
    ..invitePermissionOverride = json['invitePermissionOverride'] as bool
    ..updateCulturePermissionOverride =
        json['updateCulturePermissionOverride'] as bool
    ..hostGuidedGamePermissionOverride = _$enumDecodeNullable(
        _$HostGuidedGamesPermissionLevelEnumMap,
        json['hostGuidedGamePermissionOverride'],
        unknownValue: HostGuidedGamesPermissionLevel.ProtectedInvalidEnumValue)
    ..updateBannerPermissionOverride =
        json['updateBannerPermissionOverride'] as bool
    ..joinLevel = _$enumDecodeNullable(
        _$RuntimeGroupMemberTypeEnumMap, json['joinLevel'],
        unknownValue: RuntimeGroupMemberType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$GroupFeaturesToJson(GroupFeatures instance) =>
    <String, dynamic>{
      'maximumMembers': instance.maximumMembers,
      'maximumMembershipsOfGroupType': instance.maximumMembershipsOfGroupType,
      'capabilities': instance.capabilities,
      'membershipTypes': instance.membershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e])
          ?.toList(),
      'invitePermissionOverride': instance.invitePermissionOverride,
      'updateCulturePermissionOverride':
          instance.updateCulturePermissionOverride,
      'hostGuidedGamePermissionOverride':
          _$HostGuidedGamesPermissionLevelEnumMap[
              instance.hostGuidedGamePermissionOverride],
      'updateBannerPermissionOverride': instance.updateBannerPermissionOverride,
      'joinLevel': _$RuntimeGroupMemberTypeEnumMap[instance.joinLevel],
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

const _$HostGuidedGamesPermissionLevelEnumMap = {
  HostGuidedGamesPermissionLevel.None: 0,
  HostGuidedGamesPermissionLevel.Beginner: 1,
  HostGuidedGamesPermissionLevel.Member: 2,
  HostGuidedGamesPermissionLevel.ProtectedInvalidEnumValue: 999999999,
};

const _$RuntimeGroupMemberTypeEnumMap = {
  RuntimeGroupMemberType.None: 0,
  RuntimeGroupMemberType.Beginner: 1,
  RuntimeGroupMemberType.Member: 2,
  RuntimeGroupMemberType.Admin: 3,
  RuntimeGroupMemberType.ActingFounder: 4,
  RuntimeGroupMemberType.Founder: 5,
  RuntimeGroupMemberType.ProtectedInvalidEnumValue: 999999999,
};
