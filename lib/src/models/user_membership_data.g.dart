// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_membership_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMembershipData _$UserMembershipDataFromJson(Map<String, dynamic> json) {
  return UserMembershipData()
    ..destinyMemberships = (json['destinyMemberships'] as List)
        ?.map((e) => e == null
            ? null
            : GroupUserInfoCard.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..bungieNetUser = json['bungieNetUser'] == null
        ? null
        : GeneralUser.fromJson(json['bungieNetUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserMembershipDataToJson(UserMembershipData instance) =>
    <String, dynamic>{
      'destinyMemberships': instance.destinyMemberships,
      'bungieNetUser': instance.bungieNetUser,
    };
