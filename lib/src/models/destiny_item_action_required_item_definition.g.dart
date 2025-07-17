// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_action_required_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemActionRequiredItemDefinition
    _$DestinyItemActionRequiredItemDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyItemActionRequiredItemDefinition()
          ..count = (json['count'] as num?)?.toInt()
          ..itemHash = (json['itemHash'] as num?)?.toInt()
          ..deleteOnAction = json['deleteOnAction'] as bool?;

Map<String, dynamic> _$DestinyItemActionRequiredItemDefinitionToJson(
        DestinyItemActionRequiredItemDefinition instance) =>
    <String, dynamic>{
      'count': instance.count,
      'itemHash': instance.itemHash,
      'deleteOnAction': instance.deleteOnAction,
    };
