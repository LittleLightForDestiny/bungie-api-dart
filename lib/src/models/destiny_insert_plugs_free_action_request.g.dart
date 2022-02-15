// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plugs_free_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugsFreeActionRequest
    _$DestinyInsertPlugsFreeActionRequestFromJson(Map<String, dynamic> json) =>
        DestinyInsertPlugsFreeActionRequest()
          ..plug = json['plug'] == null
              ? null
              : DestinyInsertPlugsRequestEntry.fromJson(
                  json['plug'] as Map<String, dynamic>)
          ..itemId = json['itemId'] as String?
          ..characterId = json['characterId'] as String?
          ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyInsertPlugsFreeActionRequestToJson(
        DestinyInsertPlugsFreeActionRequest instance) =>
    <String, dynamic>{
      'plug': instance.plug,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
