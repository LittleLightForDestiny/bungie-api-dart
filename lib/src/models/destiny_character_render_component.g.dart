// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterRenderComponent _$DestinyCharacterRenderComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyCharacterRenderComponent()
      ..customDyes =
          (json['customDyes'] as List<dynamic>?)
              ?.map((e) => DyeReference.fromJson(e as Map<String, dynamic>))
              .toList()
      ..customization =
          json['customization'] == null
              ? null
              : DestinyCharacterCustomization.fromJson(
                json['customization'] as Map<String, dynamic>,
              )
      ..peerView =
          json['peerView'] == null
              ? null
              : DestinyCharacterPeerView.fromJson(
                json['peerView'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyCharacterRenderComponentToJson(
  DestinyCharacterRenderComponent instance,
) => <String, dynamic>{
  'customDyes': instance.customDyes?.map((e) => e.toJson()).toList(),
  'customization': instance.customization?.toJson(),
  'peerView': instance.peerView?.toJson(),
};
