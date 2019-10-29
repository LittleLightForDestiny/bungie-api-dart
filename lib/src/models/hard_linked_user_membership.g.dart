// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hard_linked_user_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HardLinkedUserMembership _$HardLinkedUserMembershipFromJson(
    Map<String, dynamic> json) {
  return HardLinkedUserMembership()
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..crossSaveOverriddenType = json['CrossSaveOverriddenType'] as int
    ..crossSaveOverriddenMembershipId =
        json['CrossSaveOverriddenMembershipId'] as String;
}

Map<String, dynamic> _$HardLinkedUserMembershipToJson(
        HardLinkedUserMembership instance) =>
    <String, dynamic>{
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'CrossSaveOverriddenType': instance.crossSaveOverriddenType,
      'CrossSaveOverriddenMembershipId':
          instance.crossSaveOverriddenMembershipId
    };
