// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupUserInfoCard _$GroupUserInfoCardFromJson(Map<String, dynamic> json) {
  return GroupUserInfoCard()
    ..lastSeenDisplayName = json['LastSeenDisplayName'] as String
    ..lastSeenDisplayNameType = json['LastSeenDisplayNameType'] as int
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

Map<String, dynamic> _$GroupUserInfoCardToJson(GroupUserInfoCard instance) =>
    <String, dynamic>{
      'LastSeenDisplayName': instance.lastSeenDisplayName,
      'LastSeenDisplayNameType': instance.lastSeenDisplayNameType,
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride': instance.crossSaveOverride,
      'applicableMembershipTypes': instance.applicableMembershipTypes,
      'isPublic': instance.isPublic,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
