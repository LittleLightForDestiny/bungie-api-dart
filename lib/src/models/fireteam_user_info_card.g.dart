// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamUserInfoCard _$FireteamUserInfoCardFromJson(Map<String, dynamic> json) {
  return FireteamUserInfoCard()
    ..fireteamDisplayName = json['FireteamDisplayName'] as String
    ..fireteamMembershipType = json['FireteamMembershipType'] as int
    ..fireteamPlatformProfileUrl = json['FireteamPlatformProfileUrl'] as String
    ..fireteamPlatformUniqueIdentifier =
        json['FireteamPlatformUniqueIdentifier'] as String
    ..supplementalDisplayName = json['supplementalDisplayName'] as String
    ..iconPath = json['iconPath'] as String
    ..crossSaveOverride = json['crossSaveOverride'] as int
    ..applicableMembershipTypes = (json['applicableMembershipTypes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..isPublic = json['isPublic'] as bool
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$FireteamUserInfoCardToJson(
        FireteamUserInfoCard instance) =>
    <String, dynamic>{
      'FireteamDisplayName': instance.fireteamDisplayName,
      'FireteamMembershipType': instance.fireteamMembershipType,
      'FireteamPlatformProfileUrl': instance.fireteamPlatformProfileUrl,
      'FireteamPlatformUniqueIdentifier':
          instance.fireteamPlatformUniqueIdentifier,
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride': instance.crossSaveOverride,
      'applicableMembershipTypes': instance.applicableMembershipTypes,
      'isPublic': instance.isPublic,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
