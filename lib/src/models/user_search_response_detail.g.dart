// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSearchResponseDetail _$UserSearchResponseDetailFromJson(
        Map<String, dynamic> json) =>
    UserSearchResponseDetail()
      ..bungieGlobalDisplayName = json['bungieGlobalDisplayName'] as String?
      ..bungieGlobalDisplayNameCode =
          (json['bungieGlobalDisplayNameCode'] as num?)?.toInt()
      ..bungieNetMembershipId = json['bungieNetMembershipId'] as String?
      ..destinyMemberships = (json['destinyMemberships'] as List<dynamic>?)
          ?.map((e) => UserInfoCard.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UserSearchResponseDetailToJson(
        UserSearchResponseDetail instance) =>
    <String, dynamic>{
      'bungieGlobalDisplayName': instance.bungieGlobalDisplayName,
      'bungieGlobalDisplayNameCode': instance.bungieGlobalDisplayNameCode,
      'bungieNetMembershipId': instance.bungieNetMembershipId,
      'destinyMemberships':
          instance.destinyMemberships?.map((e) => e.toJson()).toList(),
    };
