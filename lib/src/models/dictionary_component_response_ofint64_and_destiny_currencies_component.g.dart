// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_currencies_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent
_$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentFromJson(
  Map<String, dynamic> json,
) =>
    DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent()
      ..data = (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyCurrenciesComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentToJson(
  DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent instance,
) => <String, dynamic>{
  'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
