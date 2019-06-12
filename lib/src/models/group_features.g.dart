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
    ..capabilities = json['capabilities'] as int
    ..membershipTypes =
        (json['membershipTypes'] as List)?.map((e) => e as int)?.toList()
    ..invitePermissionOverride = json['invitePermissionOverride'] as bool
    ..updateCulturePermissionOverride =
        json['updateCulturePermissionOverride'] as bool
    ..hostGuidedGamePermissionOverride =
        json['hostGuidedGamePermissionOverride'] as int
    ..updateBannerPermissionOverride =
        json['updateBannerPermissionOverride'] as bool
    ..joinLevel = json['joinLevel'] as int;
}

Map<String, dynamic> _$GroupFeaturesToJson(GroupFeatures instance) =>
    <String, dynamic>{
      'maximumMembers': instance.maximumMembers,
      'maximumMembershipsOfGroupType': instance.maximumMembershipsOfGroupType,
      'capabilities': instance.capabilities,
      'membershipTypes': instance.membershipTypes,
      'invitePermissionOverride': instance.invitePermissionOverride,
      'updateCulturePermissionOverride':
          instance.updateCulturePermissionOverride,
      'hostGuidedGamePermissionOverride':
          instance.hostGuidedGamePermissionOverride,
      'updateBannerPermissionOverride': instance.updateBannerPermissionOverride,
      'joinLevel': instance.joinLevel
    };
