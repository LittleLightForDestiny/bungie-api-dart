// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent
_$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentFromJson(
  Map<String, dynamic> json,
) =>
    DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent()
      ..data = (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyItemPlugComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentToJson(
  DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent instance,
) => <String, dynamic>{
  'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
