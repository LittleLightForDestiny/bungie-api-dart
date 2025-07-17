// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_string_variables_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyStringVariablesComponent
_$SingleComponentResponseOfDestinyStringVariablesComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyStringVariablesComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyStringVariablesComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyStringVariablesComponentToJson(
  SingleComponentResponseOfDestinyStringVariablesComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
