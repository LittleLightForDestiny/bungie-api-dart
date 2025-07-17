// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_options_edit_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionsEditAction _$GroupOptionsEditActionFromJson(
        Map<String, dynamic> json) =>
    GroupOptionsEditAction()
      ..invitePermissionOverride = json['InvitePermissionOverride'] as bool?
      ..updateCulturePermissionOverride =
          json['UpdateCulturePermissionOverride'] as bool?
      ..hostGuidedGamePermissionOverride =
          (json['HostGuidedGamePermissionOverride'] as num?)?.toInt()
      ..updateBannerPermissionOverride =
          json['UpdateBannerPermissionOverride'] as bool?
      ..joinLevel = (json['JoinLevel'] as num?)?.toInt();

Map<String, dynamic> _$GroupOptionsEditActionToJson(
        GroupOptionsEditAction instance) =>
    <String, dynamic>{
      'InvitePermissionOverride': instance.invitePermissionOverride,
      'UpdateCulturePermissionOverride':
          instance.updateCulturePermissionOverride,
      'HostGuidedGamePermissionOverride':
          instance.hostGuidedGamePermissionOverride,
      'UpdateBannerPermissionOverride': instance.updateBannerPermissionOverride,
      'JoinLevel': instance.joinLevel,
    };
