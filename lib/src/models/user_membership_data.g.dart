// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_membership_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMembershipData _$UserMembershipDataFromJson(Map<String, dynamic> json) =>
    UserMembershipData()
      ..destinyMemberships = (json['destinyMemberships'] as List<dynamic>?)
          ?.map((e) => GroupUserInfoCard.fromJson(e as Map<String, dynamic>))
          .toList()
      ..primaryMembershipId = json['primaryMembershipId'] as String?
      ..bungieNetUser = json['bungieNetUser'] == null
          ? null
          : GeneralUser.fromJson(json['bungieNetUser'] as Map<String, dynamic>);

Map<String, dynamic> _$UserMembershipDataToJson(UserMembershipData instance) =>
    <String, dynamic>{
      'destinyMemberships':
          instance.destinyMemberships?.map((e) => e.toJson()).toList(),
      'primaryMembershipId': instance.primaryMembershipId,
      'bungieNetUser': instance.bungieNetUser?.toJson(),
    };
