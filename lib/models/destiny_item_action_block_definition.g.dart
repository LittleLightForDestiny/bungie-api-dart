// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_action_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemActionBlockDefinition _$DestinyItemActionBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemActionBlockDefinition()
    ..verbName = json['verbName'] as String
    ..verbDescription = json['verbDescription'] as String
    ..isPositive = json['isPositive'] as bool
    ..overlayScreenName = json['overlayScreenName'] as String
    ..overlayIcon = json['overlayIcon'] as String
    ..requiredCooldownSeconds = json['requiredCooldownSeconds'] as int
    ..requiredItems = (json['requiredItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemActionRequiredItemDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..progressionRewards = (json['progressionRewards'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyProgressionRewardDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..actionTypeLabel = json['actionTypeLabel'] as String
    ..requiredLocation = json['requiredLocation'] as String
    ..requiredCooldownHash = json['requiredCooldownHash'] as int
    ..deleteOnAction = json['deleteOnAction'] as bool
    ..consumeEntireStack = json['consumeEntireStack'] as bool
    ..useOnAcquire = json['useOnAcquire'] as bool;
}

Map<String, dynamic> _$DestinyItemActionBlockDefinitionToJson(
        DestinyItemActionBlockDefinition instance) =>
    <String, dynamic>{
      'verbName': instance.verbName,
      'verbDescription': instance.verbDescription,
      'isPositive': instance.isPositive,
      'overlayScreenName': instance.overlayScreenName,
      'overlayIcon': instance.overlayIcon,
      'requiredCooldownSeconds': instance.requiredCooldownSeconds,
      'requiredItems': instance.requiredItems,
      'progressionRewards': instance.progressionRewards,
      'actionTypeLabel': instance.actionTypeLabel,
      'requiredLocation': instance.requiredLocation,
      'requiredCooldownHash': instance.requiredCooldownHash,
      'deleteOnAction': instance.deleteOnAction,
      'consumeEntireStack': instance.consumeEntireStack,
      'useOnAcquire': instance.useOnAcquire
    };
