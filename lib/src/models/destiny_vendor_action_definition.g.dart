// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_action_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorActionDefinition _$DestinyVendorActionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorActionDefinition()
      ..description = json['description'] as String?
      ..executeSeconds = (json['executeSeconds'] as num?)?.toInt()
      ..icon = json['icon'] as String?
      ..name = json['name'] as String?
      ..verb = json['verb'] as String?
      ..isPositive = json['isPositive'] as bool?
      ..actionId = json['actionId'] as String?
      ..actionHash = (json['actionHash'] as num?)?.toInt()
      ..autoPerformAction = json['autoPerformAction'] as bool?;

Map<String, dynamic> _$DestinyVendorActionDefinitionToJson(
  DestinyVendorActionDefinition instance,
) => <String, dynamic>{
  'description': instance.description,
  'executeSeconds': instance.executeSeconds,
  'icon': instance.icon,
  'name': instance.name,
  'verb': instance.verb,
  'isPositive': instance.isPositive,
  'actionId': instance.actionId,
  'actionHash': instance.actionHash,
  'autoPerformAction': instance.autoPerformAction,
};
