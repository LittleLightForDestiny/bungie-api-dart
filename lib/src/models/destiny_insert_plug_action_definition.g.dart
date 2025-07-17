// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plug_action_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugActionDefinition _$DestinyInsertPlugActionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyInsertPlugActionDefinition()
      ..actionExecuteSeconds = (json['actionExecuteSeconds'] as num?)?.toInt()
      ..actionType = decodeSocketTypeActionType(json['actionType']);

Map<String, dynamic> _$DestinyInsertPlugActionDefinitionToJson(
  DestinyInsertPlugActionDefinition instance,
) => <String, dynamic>{
  'actionExecuteSeconds': instance.actionExecuteSeconds,
  'actionType': encodeSocketTypeActionType(instance.actionType),
};
