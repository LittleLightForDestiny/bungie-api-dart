// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_state_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemStateRequest _$DestinyItemStateRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyItemStateRequest()
      ..state = json['state'] as bool?
      ..itemId = json['itemId'] as String?
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyItemStateRequestToJson(
        DestinyItemStateRequest instance) =>
    <String, dynamic>{
      'state': instance.state,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
