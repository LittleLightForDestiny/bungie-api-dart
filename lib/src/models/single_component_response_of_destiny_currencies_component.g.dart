// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_currencies_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCurrenciesComponent
    _$SingleComponentResponseOfDestinyCurrenciesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyCurrenciesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyCurrenciesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyCurrenciesComponentToJson(
            SingleComponentResponseOfDestinyCurrenciesComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
