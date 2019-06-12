// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent
    _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyVendorCategoriesComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
