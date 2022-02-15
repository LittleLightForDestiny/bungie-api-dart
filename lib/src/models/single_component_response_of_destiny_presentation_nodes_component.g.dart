// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_presentation_nodes_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyPresentationNodesComponent
    _$SingleComponentResponseOfDestinyPresentationNodesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyPresentationNodesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyPresentationNodesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyPresentationNodesComponentToJson(
        SingleComponentResponseOfDestinyPresentationNodesComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
