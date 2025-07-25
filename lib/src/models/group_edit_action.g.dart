// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_edit_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupEditAction _$GroupEditActionFromJson(Map<String, dynamic> json) =>
    GroupEditAction()
      ..name = json['name'] as String?
      ..about = json['about'] as String?
      ..motto = json['motto'] as String?
      ..theme = json['theme'] as String?
      ..avatarImageIndex = (json['avatarImageIndex'] as num?)?.toInt()
      ..tags = json['tags'] as String?
      ..isPublic = json['isPublic'] as bool?
      ..membershipOption = (json['membershipOption'] as num?)?.toInt()
      ..isPublicTopicAdminOnly = json['isPublicTopicAdminOnly'] as bool?
      ..allowChat = json['allowChat'] as bool?
      ..chatSecurity = (json['chatSecurity'] as num?)?.toInt()
      ..callsign = json['callsign'] as String?
      ..locale = json['locale'] as String?
      ..homepage = (json['homepage'] as num?)?.toInt()
      ..enableInvitationMessagingForAdmins =
          json['enableInvitationMessagingForAdmins'] as bool?
      ..defaultPublicity = (json['defaultPublicity'] as num?)?.toInt();

Map<String, dynamic> _$GroupEditActionToJson(GroupEditAction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'about': instance.about,
      'motto': instance.motto,
      'theme': instance.theme,
      'avatarImageIndex': instance.avatarImageIndex,
      'tags': instance.tags,
      'isPublic': instance.isPublic,
      'membershipOption': instance.membershipOption,
      'isPublicTopicAdminOnly': instance.isPublicTopicAdminOnly,
      'allowChat': instance.allowChat,
      'chatSecurity': instance.chatSecurity,
      'callsign': instance.callsign,
      'locale': instance.locale,
      'homepage': instance.homepage,
      'enableInvitationMessagingForAdmins':
          instance.enableInvitationMessagingForAdmins,
      'defaultPublicity': instance.defaultPublicity,
    };
