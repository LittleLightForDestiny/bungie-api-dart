// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutComponent _$DestinyLoadoutComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutComponent()
      ..colorHash = json['colorHash'] as int?
      ..iconHash = json['iconHash'] as int?
      ..nameHash = json['nameHash'] as int?
      ..items = (json['items'] as List<dynamic>?)
          ?.map((e) =>
              DestinyLoadoutItemComponent.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyLoadoutComponentToJson(
        DestinyLoadoutComponent instance) =>
    <String, dynamic>{
      'colorHash': instance.colorHash,
      'iconHash': instance.iconHash,
      'nameHash': instance.nameHash,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };
