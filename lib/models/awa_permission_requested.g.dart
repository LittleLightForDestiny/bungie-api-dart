// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_permission_requested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaPermissionRequested _$AwaPermissionRequestedFromJson(
    Map<String, dynamic> json) {
  return AwaPermissionRequested()
    ..type = json['type'] as int
    ..affectedItemId = json['affectedItemId'] as String
    ..membershipType = json['membershipType'] as int
    ..characterId = json['characterId'] as String;
}

Map<String, dynamic> _$AwaPermissionRequestedToJson(
        AwaPermissionRequested instance) =>
    <String, dynamic>{
      'type': instance.type,
      'affectedItemId': instance.affectedItemId,
      'membershipType': instance.membershipType,
      'characterId': instance.characterId
    };
