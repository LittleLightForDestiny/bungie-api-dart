// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_linked_profiles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLinkedProfilesResponse _$DestinyLinkedProfilesResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyLinkedProfilesResponse()
      ..profiles = (json['profiles'] as List<dynamic>?)
          ?.map((e) =>
              DestinyProfileUserInfoCard.fromJson(e as Map<String, dynamic>))
          .toList()
      ..bnetMembership = json['bnetMembership'] == null
          ? null
          : UserInfoCard.fromJson(
              json['bnetMembership'] as Map<String, dynamic>)
      ..profilesWithErrors = (json['profilesWithErrors'] as List<dynamic>?)
          ?.map((e) => DestinyErrorProfile.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyLinkedProfilesResponseToJson(
        DestinyLinkedProfilesResponse instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
      'bnetMembership': instance.bnetMembership,
      'profilesWithErrors': instance.profilesWithErrors,
    };
