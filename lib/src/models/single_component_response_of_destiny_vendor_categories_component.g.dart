// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_vendor_categories_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyVendorCategoriesComponent
_$SingleComponentResponseOfDestinyVendorCategoriesComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyVendorCategoriesComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyVendorCategoriesComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyVendorCategoriesComponentToJson(
  SingleComponentResponseOfDestinyVendorCategoriesComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
