// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutItemComponent _$DestinyLoadoutItemComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyLoadoutItemComponent()
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..plugItemHashes = (json['plugItemHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList();

Map<String, dynamic> _$DestinyLoadoutItemComponentToJson(
        DestinyLoadoutItemComponent instance) =>
    <String, dynamic>{
      'itemInstanceId': instance.itemInstanceId,
      'plugItemHashes': instance.plugItemHashes,
    };
