// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorComponent
    _$SingleComponentResponseOfDestinyVendorComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyVendorComponent()
    ..data = json['data'] == null
        ? null
        : DestinyVendorComponent.fromJson(json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyVendorComponentToJson(
        SingleComponentResponseOfDestinyVendorComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
