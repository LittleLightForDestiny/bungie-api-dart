// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plugs_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugsActionRequest _$DestinyInsertPlugsActionRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyInsertPlugsActionRequest()
      ..actionToken = json['actionToken'] as String?
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..plug = json['plug'] == null
          ? null
          : DestinyInsertPlugsRequestEntry.fromJson(
              json['plug'] as Map<String, dynamic>)
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyInsertPlugsActionRequestToJson(
        DestinyInsertPlugsActionRequest instance) =>
    <String, dynamic>{
      'actionToken': instance.actionToken,
      'itemInstanceId': instance.itemInstanceId,
      'plug': instance.plug,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
