// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_categories_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorCategoriesComponent
    _$SingleComponentResponseOfDestinyVendorCategoriesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyVendorCategoriesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyVendorCategoriesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyVendorCategoriesComponentToJson(
        SingleComponentResponseOfDestinyVendorCategoriesComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
