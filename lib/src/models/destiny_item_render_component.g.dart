// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemRenderComponent _$DestinyItemRenderComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemRenderComponent()
      ..useCustomDyes = json['useCustomDyes'] as bool?
      ..artRegions = (json['artRegions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      );

Map<String, dynamic> _$DestinyItemRenderComponentToJson(
  DestinyItemRenderComponent instance,
) => <String, dynamic>{
  'useCustomDyes': instance.useCustomDyes,
  'artRegions': instance.artRegions,
};
