// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent
    _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyPublicVendorComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
