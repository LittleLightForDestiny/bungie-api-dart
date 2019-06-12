// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent
    _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyPublicVendorComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
