// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileUserInfoCard _$DestinyProfileUserInfoCardFromJson(
    Map<String, dynamic> json) {
  return DestinyProfileUserInfoCard()
    ..dateLastPlayed = json['dateLastPlayed'] as String
    ..supplementalDisplayName = json['supplementalDisplayName'] as String
    ..iconPath = json['iconPath'] as String
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$DestinyProfileUserInfoCardToJson(
        DestinyProfileUserInfoCard instance) =>
    <String, dynamic>{
      'dateLastPlayed': instance.dateLastPlayed,
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
