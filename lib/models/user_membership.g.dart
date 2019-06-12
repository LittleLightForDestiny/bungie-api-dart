// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMembership _$UserMembershipFromJson(Map<String, dynamic> json) {
  return UserMembership()
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$UserMembershipToJson(UserMembership instance) =>
    <String, dynamic>{
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };
