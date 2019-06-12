// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_group_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorGroupComponent
    _$SingleComponentResponseOfDestinyVendorGroupComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyVendorGroupComponent()
    ..data = json['data'] == null
        ? null
        : DestinyVendorGroupComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyVendorGroupComponentToJson(
            SingleComponentResponseOfDestinyVendorGroupComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
