// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hard_linked_user_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HardLinkedUserMembership _$HardLinkedUserMembershipFromJson(
        Map<String, dynamic> json) =>
    HardLinkedUserMembership()
      ..membershipType = decodeBungieMembershipType(json['membershipType'])
      ..membershipId = json['membershipId'] as String?
      ..crossSaveOverriddenType =
          decodeBungieMembershipType(json['CrossSaveOverriddenType'])
      ..crossSaveOverriddenMembershipId =
          json['CrossSaveOverriddenMembershipId'] as String?;

Map<String, dynamic> _$HardLinkedUserMembershipToJson(
        HardLinkedUserMembership instance) =>
    <String, dynamic>{
      'membershipType': encodeBungieMembershipType(instance.membershipType),
      'membershipId': instance.membershipId,
      'CrossSaveOverriddenType':
          encodeBungieMembershipType(instance.crossSaveOverriddenType),
      'CrossSaveOverriddenMembershipId':
          instance.crossSaveOverriddenMembershipId,
    };
