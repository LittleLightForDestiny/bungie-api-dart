// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoCard _$UserInfoCardFromJson(Map<String, dynamic> json) {
  return UserInfoCard()
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

Map<String, dynamic> _$UserInfoCardToJson(UserInfoCard instance) =>
    <String, dynamic>{
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride': instance.crossSaveOverride,
      'applicableMembershipTypes': instance.applicableMembershipTypes,
      'isPublic': instance.isPublic,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
