// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemComponent
_$DictionaryComponentResponseOfint32AndDestinyItemComponentFromJson(
  Map<String, dynamic> json,
) =>
    DictionaryComponentResponseOfint32AndDestinyItemComponent()
      ..data = (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyItemComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$DictionaryComponentResponseOfint32AndDestinyItemComponentToJson(
  DictionaryComponentResponseOfint32AndDestinyItemComponent instance,
) => <String, dynamic>{
  'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
