// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_v2_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupV2Card _$GroupV2CardFromJson(Map<String, dynamic> json) => GroupV2Card()
  ..groupId = json['groupId'] as String?
  ..name = json['name'] as String?
  ..groupType = decodeGroupType(json['groupType'])
  ..creationDate = json['creationDate'] as String?
  ..about = json['about'] as String?
  ..motto = json['motto'] as String?
  ..memberCount = (json['memberCount'] as num?)?.toInt()
  ..locale = json['locale'] as String?
  ..membershipOption = decodeMembershipOption(json['membershipOption'])
  ..capabilities = json['capabilities'] == null
      ? null
      : Capabilities.fromJson((json['capabilities'] as num).toInt())
  ..remoteGroupId = json['remoteGroupId'] as String?
  ..clanInfo = json['clanInfo'] == null
      ? null
      : GroupV2ClanInfo.fromJson(json['clanInfo'] as Map<String, dynamic>)
  ..avatarPath = json['avatarPath'] as String?
  ..theme = json['theme'] as String?;

Map<String, dynamic> _$GroupV2CardToJson(GroupV2Card instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'groupType': encodeGroupType(instance.groupType),
      'creationDate': instance.creationDate,
      'about': instance.about,
      'motto': instance.motto,
      'memberCount': instance.memberCount,
      'locale': instance.locale,
      'membershipOption': encodeMembershipOption(instance.membershipOption),
      'capabilities': instance.capabilities?.toJson(),
      'remoteGroupId': instance.remoteGroupId,
      'clanInfo': instance.clanInfo?.toJson(),
      'avatarPath': instance.avatarPath,
      'theme': instance.theme,
    };
