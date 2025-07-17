// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupFeatures _$GroupFeaturesFromJson(Map<String, dynamic> json) =>
    GroupFeatures()
      ..maximumMembers = (json['maximumMembers'] as num?)?.toInt()
      ..maximumMembershipsOfGroupType =
          (json['maximumMembershipsOfGroupType'] as num?)?.toInt()
      ..capabilities =
          json['capabilities'] == null
              ? null
              : Capabilities.fromJson((json['capabilities'] as num).toInt())
      ..membershipTypes =
          (json['membershipTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$BungieMembershipTypeEnumMap, e))
              .toList()
      ..invitePermissionOverride = json['invitePermissionOverride'] as bool?
      ..updateCulturePermissionOverride =
          json['updateCulturePermissionOverride'] as bool?
      ..hostGuidedGamePermissionOverride = decodeHostGuidedGamesPermissionLevel(
        json['hostGuidedGamePermissionOverride'],
      )
      ..updateBannerPermissionOverride =
          json['updateBannerPermissionOverride'] as bool?
      ..joinLevel = decodeRuntimeGroupMemberType(json['joinLevel']);

Map<String, dynamic> _$GroupFeaturesToJson(
  GroupFeatures instance,
) => <String, dynamic>{
  'maximumMembers': instance.maximumMembers,
  'maximumMembershipsOfGroupType': instance.maximumMembershipsOfGroupType,
  'capabilities': instance.capabilities?.toJson(),
  'membershipTypes':
      instance.membershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e]!)
          .toList(),
  'invitePermissionOverride': instance.invitePermissionOverride,
  'updateCulturePermissionOverride': instance.updateCulturePermissionOverride,
  'hostGuidedGamePermissionOverride': encodeHostGuidedGamesPermissionLevel(
    instance.hostGuidedGamePermissionOverride,
  ),
  'updateBannerPermissionOverride': instance.updateBannerPermissionOverride,
  'joinLevel': encodeRuntimeGroupMemberType(instance.joinLevel),
};

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerEgs: 6,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.GoliathGame: 20,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
