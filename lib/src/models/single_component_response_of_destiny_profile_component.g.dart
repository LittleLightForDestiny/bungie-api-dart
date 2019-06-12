// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileComponent
    _$SingleComponentResponseOfDestinyProfileComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyProfileComponent()
    ..data = json['data'] == null
        ? null
        : DestinyProfileComponent.fromJson(json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyProfileComponentToJson(
        SingleComponentResponseOfDestinyProfileComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
