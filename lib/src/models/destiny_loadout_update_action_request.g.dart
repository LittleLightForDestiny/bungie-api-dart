// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_update_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutUpdateActionRequest _$DestinyLoadoutUpdateActionRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutUpdateActionRequest()
      ..colorHash = (json['colorHash'] as num?)?.toInt()
      ..iconHash = (json['iconHash'] as num?)?.toInt()
      ..nameHash = (json['nameHash'] as num?)?.toInt()
      ..loadoutIndex = (json['loadoutIndex'] as num?)?.toInt()
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyLoadoutUpdateActionRequestToJson(
        DestinyLoadoutUpdateActionRequest instance) =>
    <String, dynamic>{
      'colorHash': instance.colorHash,
      'iconHash': instance.iconHash,
      'nameHash': instance.nameHash,
      'loadoutIndex': instance.loadoutIndex,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
