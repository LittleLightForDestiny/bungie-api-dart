// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent
_$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentFromJson(
  Map<String, dynamic> json,
) =>
    DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent()
      ..data = (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyItemSocketsComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentToJson(
  DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent instance,
) => <String, dynamic>{
  'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
