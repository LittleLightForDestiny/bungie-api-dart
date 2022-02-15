// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_set_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSetActionRequest _$DestinyItemSetActionRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSetActionRequest()
      ..itemIds =
          (json['itemIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyItemSetActionRequestToJson(
        DestinyItemSetActionRequest instance) =>
    <String, dynamic>{
      'itemIds': instance.itemIds,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
