// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_kiosks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyKiosksComponent
    _$SingleComponentResponseOfDestinyKiosksComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyKiosksComponent()
    ..data = json['data'] == null
        ? null
        : DestinyKiosksComponent.fromJson(json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyKiosksComponentToJson(
        SingleComponentResponseOfDestinyKiosksComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
