// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupV2 _$GroupV2FromJson(Map<String, dynamic> json) {
  return GroupV2()
    ..groupId = json['groupId'] as String?
    ..name = json['name'] as String?
    ..groupType = _$enumDecodeNullable(_$GroupTypeEnumMap, json['groupType'],
        unknownValue: GroupType.ProtectedInvalidEnumValue)
    ..membershipIdCreated = json['membershipIdCreated'] as String?
    ..creationDate = json['creationDate'] as String?
    ..modificationDate = json['modificationDate'] as String?
    ..about = json['about'] as String?
    ..tags = (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..memberCount = json['memberCount'] as int?
    ..isPublic = json['isPublic'] as bool?
    ..isPublicTopicAdminOnly = json['isPublicTopicAdminOnly'] as bool?
    ..motto = json['motto'] as String?
    ..allowChat = json['allowChat'] as bool?
    ..isDefaultPostPublic = json['isDefaultPostPublic'] as bool?
    ..chatSecurity = _$enumDecodeNullable(
        _$ChatSecuritySettingEnumMap, json['chatSecurity'],
        unknownValue: ChatSecuritySetting.ProtectedInvalidEnumValue)
    ..locale = json['locale'] as String?
    ..avatarImageIndex = json['avatarImageIndex'] as int?
    ..homepage = _$enumDecodeNullable(_$GroupHomepageEnumMap, json['homepage'],
        unknownValue: GroupHomepage.ProtectedInvalidEnumValue)
    ..membershipOption = _$enumDecodeNullable(
        _$MembershipOptionEnumMap, json['membershipOption'],
        unknownValue: MembershipOption.ProtectedInvalidEnumValue)
    ..defaultPublicity = _$enumDecodeNullable(
        _$GroupPostPublicityEnumMap, json['defaultPublicity'],
        unknownValue: GroupPostPublicity.ProtectedInvalidEnumValue)
    ..theme = json['theme'] as String?
    ..bannerPath = json['bannerPath'] as String?
    ..avatarPath = json['avatarPath'] as String?
    ..conversationId = json['conversationId'] as String?
    ..enableInvitationMessagingForAdmins =
        json['enableInvitationMessagingForAdmins'] as bool?
    ..banExpireDate = json['banExpireDate'] as String?
    ..features = json['features'] == null
        ? null
        : GroupFeatures.fromJson(json['features'] as Map<String, dynamic>)
    ..clanInfo = json['clanInfo'] == null
        ? null
        : GroupV2ClanInfoAndInvestment.fromJson(
            json['clanInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GroupV2ToJson(GroupV2 instance) => <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'groupType': _$GroupTypeEnumMap[instance.groupType],
      'membershipIdCreated': instance.membershipIdCreated,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
      'about': instance.about,
      'tags': instance.tags,
      'memberCount': instance.memberCount,
      'isPublic': instance.isPublic,
      'isPublicTopicAdminOnly': instance.isPublicTopicAdminOnly,
      'motto': instance.motto,
      'allowChat': instance.allowChat,
      'isDefaultPostPublic': instance.isDefaultPostPublic,
      'chatSecurity': _$ChatSecuritySettingEnumMap[instance.chatSecurity],
      'locale': instance.locale,
      'avatarImageIndex': instance.avatarImageIndex,
      'homepage': _$GroupHomepageEnumMap[instance.homepage],
      'membershipOption': _$MembershipOptionEnumMap[instance.membershipOption],
      'defaultPublicity':
          _$GroupPostPublicityEnumMap[instance.defaultPublicity],
      'theme': instance.theme,
      'bannerPath': instance.bannerPath,
      'avatarPath': instance.avatarPath,
      'conversationId': instance.conversationId,
      'enableInvitationMessagingForAdmins':
          instance.enableInvitationMessagingForAdmins,
      'banExpireDate': instance.banExpireDate,
      'features': instance.features,
      'clanInfo': instance.clanInfo,
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

const _$GroupTypeEnumMap = {
  GroupType.General: 0,
  GroupType.Clan: 1,
  GroupType.ProtectedInvalidEnumValue: 999999999,
};

const _$ChatSecuritySettingEnumMap = {
  ChatSecuritySetting.Group: 0,
  ChatSecuritySetting.Admins: 1,
  ChatSecuritySetting.ProtectedInvalidEnumValue: 999999999,
};

const _$GroupHomepageEnumMap = {
  GroupHomepage.Wall: 0,
  GroupHomepage.Forum: 1,
  GroupHomepage.AllianceForum: 2,
  GroupHomepage.ProtectedInvalidEnumValue: 999999999,
};

const _$MembershipOptionEnumMap = {
  MembershipOption.Reviewed: 0,
  MembershipOption.Open: 1,
  MembershipOption.Closed: 2,
  MembershipOption.ProtectedInvalidEnumValue: 999999999,
};

const _$GroupPostPublicityEnumMap = {
  GroupPostPublicity.Public: 0,
  GroupPostPublicity.Alliance: 1,
  GroupPostPublicity.Private: 2,
  GroupPostPublicity.ProtectedInvalidEnumValue: 999999999,
};
