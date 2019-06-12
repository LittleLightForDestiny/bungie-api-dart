// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterActionRequest _$DestinyCharacterActionRequestFromJson(
    Map<String, dynamic> json) {
  return DestinyCharacterActionRequest()
    ..characterId = json['characterId'] as String
    ..membershipType = json['membershipType'] as int;
}

Map<String, dynamic> _$DestinyCharacterActionRequestToJson(
        DestinyCharacterActionRequest instance) =>
    <String, dynamic>{
      'characterId': instance.characterId,
      'membershipType': instance.membershipType
    };
