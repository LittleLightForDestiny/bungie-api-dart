// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_group_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorGroupComponent
_$SingleComponentResponseOfDestinyVendorGroupComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyVendorGroupComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyVendorGroupComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyVendorGroupComponentToJson(
  SingleComponentResponseOfDestinyVendorGroupComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
