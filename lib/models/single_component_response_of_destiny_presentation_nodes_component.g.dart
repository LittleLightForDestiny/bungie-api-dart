// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_presentation_nodes_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyPresentationNodesComponent
    _$SingleComponentResponseOfDestinyPresentationNodesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyPresentationNodesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyPresentationNodesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyPresentationNodesComponentToJson(
        SingleComponentResponseOfDestinyPresentationNodesComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
