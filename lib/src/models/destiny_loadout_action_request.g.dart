// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutActionRequest _$DestinyLoadoutActionRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLoadoutActionRequest()
      ..loadoutIndex = (json['loadoutIndex'] as num?)?.toInt()
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyLoadoutActionRequestToJson(
  DestinyLoadoutActionRequest instance,
) => <String, dynamic>{
  'loadoutIndex': instance.loadoutIndex,
  'characterId': instance.characterId,
  'membershipType': encodeBungieMembershipType(instance.membershipType),
};
