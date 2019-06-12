// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_receipts_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorReceiptsComponent
    _$SingleComponentResponseOfDestinyVendorReceiptsComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyVendorReceiptsComponent()
    ..data = json['data'] == null
        ? null
        : DestinyVendorReceiptsComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyVendorReceiptsComponentToJson(
            SingleComponentResponseOfDestinyVendorReceiptsComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
