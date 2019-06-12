// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileCollectiblesComponent
    _$SingleComponentResponseOfDestinyProfileCollectiblesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyProfileCollectiblesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyProfileCollectiblesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyProfileCollectiblesComponentToJson(
            SingleComponentResponseOfDestinyProfileCollectiblesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
