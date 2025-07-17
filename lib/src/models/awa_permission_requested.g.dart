// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_permission_requested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaPermissionRequested _$AwaPermissionRequestedFromJson(
  Map<String, dynamic> json,
) =>
    AwaPermissionRequested()
      ..type = decodeAwaType(json['type'])
      ..affectedItemId = json['affectedItemId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType'])
      ..characterId = json['characterId'] as String?;

Map<String, dynamic> _$AwaPermissionRequestedToJson(
  AwaPermissionRequested instance,
) => <String, dynamic>{
  'type': encodeAwaType(instance.type),
  'affectedItemId': instance.affectedItemId,
  'membershipType': encodeBungieMembershipType(instance.membershipType),
  'characterId': instance.characterId,
};
