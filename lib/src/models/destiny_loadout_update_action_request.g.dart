// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_update_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutUpdateActionRequest _$DestinyLoadoutUpdateActionRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutUpdateActionRequest()
      ..colorHash = json['colorHash'] as int?
      ..iconHash = json['iconHash'] as int?
      ..nameHash = json['nameHash'] as int?
      ..loadoutIndex = json['loadoutIndex'] as int?
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
