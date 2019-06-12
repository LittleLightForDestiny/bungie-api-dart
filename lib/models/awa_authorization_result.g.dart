// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_authorization_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaAuthorizationResult _$AwaAuthorizationResultFromJson(
    Map<String, dynamic> json) {
  return AwaAuthorizationResult()
    ..userSelection = json['userSelection'] as int
    ..responseReason = json['responseReason'] as int
    ..developerNote = json['developerNote'] as String
    ..actionToken = json['actionToken'] as String
    ..maximumNumberOfUses = json['maximumNumberOfUses'] as int
    ..validUntil = json['validUntil'] as String
    ..type = json['type'] as int
    ..membershipType = json['membershipType'] as int;
}

Map<String, dynamic> _$AwaAuthorizationResultToJson(
        AwaAuthorizationResult instance) =>
    <String, dynamic>{
      'userSelection': instance.userSelection,
      'responseReason': instance.responseReason,
      'developerNote': instance.developerNote,
      'actionToken': instance.actionToken,
      'maximumNumberOfUses': instance.maximumNumberOfUses,
      'validUntil': instance.validUntil,
      'type': instance.type,
      'membershipType': instance.membershipType
    };
