// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntityActionResult _$EntityActionResultFromJson(Map<String, dynamic> json) =>
    EntityActionResult()
      ..entityId = json['entityId'] as String?
      ..result = decodePlatformErrorCodes(json['result']);

Map<String, dynamic> _$EntityActionResultToJson(EntityActionResult instance) =>
    <String, dynamic>{
      'entityId': instance.entityId,
      'result': encodePlatformErrorCodes(instance.result),
    };
