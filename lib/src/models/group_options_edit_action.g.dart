// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_options_edit_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionsEditAction _$GroupOptionsEditActionFromJson(
  Map<String, dynamic> json,
) => GroupOptionsEditAction()
  ..invitePermissionOverride = json['InvitePermissionOverride'] as bool?
  ..updateCulturePermissionOverride =
      json['UpdateCulturePermissionOverride'] as bool?
  ..hostGuidedGamePermissionOverride = decodeHostGuidedGamesPermissionLevel(
    json['HostGuidedGamePermissionOverride'],
  )
  ..updateBannerPermissionOverride =
      json['UpdateBannerPermissionOverride'] as bool?
  ..joinLevel = decodeRuntimeGroupMemberType(json['JoinLevel']);

Map<String, dynamic> _$GroupOptionsEditActionToJson(
  GroupOptionsEditAction instance,
) => <String, dynamic>{
  'InvitePermissionOverride': instance.invitePermissionOverride,
  'UpdateCulturePermissionOverride': instance.updateCulturePermissionOverride,
  'HostGuidedGamePermissionOverride': encodeHostGuidedGamesPermissionLevel(
    instance.hostGuidedGamePermissionOverride,
  ),
  'UpdateBannerPermissionOverride': instance.updateBannerPermissionOverride,
  'JoinLevel': encodeRuntimeGroupMemberType(instance.joinLevel),
};
