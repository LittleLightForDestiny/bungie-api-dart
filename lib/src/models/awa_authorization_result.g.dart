// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_authorization_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaAuthorizationResult _$AwaAuthorizationResultFromJson(
        Map<String, dynamic> json) =>
    AwaAuthorizationResult()
      ..userSelection = decodeAwaUserSelection(json['userSelection'])
      ..responseReason = decodeAwaResponseReason(json['responseReason'])
      ..developerNote = json['developerNote'] as String?
      ..actionToken = json['actionToken'] as String?
      ..maximumNumberOfUses = (json['maximumNumberOfUses'] as num?)?.toInt()
      ..validUntil = json['validUntil'] as String?
      ..type = decodeAwaType(json['type'])
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$AwaAuthorizationResultToJson(
        AwaAuthorizationResult instance) =>
    <String, dynamic>{
      'userSelection': encodeAwaUserSelection(instance.userSelection),
      'responseReason': encodeAwaResponseReason(instance.responseReason),
      'developerNote': instance.developerNote,
      'actionToken': instance.actionToken,
      'maximumNumberOfUses': instance.maximumNumberOfUses,
      'validUntil': instance.validUntil,
      'type': encodeAwaType(instance.type),
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
