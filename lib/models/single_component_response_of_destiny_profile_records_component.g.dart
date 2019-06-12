// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileRecordsComponent
    _$SingleComponentResponseOfDestinyProfileRecordsComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyProfileRecordsComponent()
    ..data = json['data'] == null
        ? null
        : DestinyProfileRecordsComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyProfileRecordsComponentToJson(
            SingleComponentResponseOfDestinyProfileRecordsComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
