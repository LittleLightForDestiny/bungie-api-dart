// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCollectiblesComponent
    _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyCollectiblesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyCollectiblesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(
            SingleComponentResponseOfDestinyCollectiblesComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
