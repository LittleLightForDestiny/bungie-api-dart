// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoCard _$UserInfoCardFromJson(Map<String, dynamic> json) {
  return UserInfoCard()
    ..supplementalDisplayName = json['supplementalDisplayName'] as String
    ..iconPath = json['iconPath'] as String
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$UserInfoCardToJson(UserInfoCard instance) =>
    <String, dynamic>{
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
