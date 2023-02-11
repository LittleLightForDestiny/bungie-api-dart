// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileRecordsComponent
    _$SingleComponentResponseOfDestinyProfileRecordsComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyProfileRecordsComponent()
          ..data = json['data'] == null
              ? null
              : DestinyProfileRecordsComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyProfileRecordsComponentToJson(
            SingleComponentResponseOfDestinyProfileRecordsComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
