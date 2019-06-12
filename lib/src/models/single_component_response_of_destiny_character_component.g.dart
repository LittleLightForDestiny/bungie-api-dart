// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterComponent
    _$SingleComponentResponseOfDestinyCharacterComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyCharacterComponent()
    ..data = json['data'] == null
        ? null
        : DestinyCharacterComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyCharacterComponentToJson(
        SingleComponentResponseOfDestinyCharacterComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
