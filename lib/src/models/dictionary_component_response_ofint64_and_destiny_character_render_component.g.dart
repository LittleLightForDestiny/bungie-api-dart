// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_character_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent
_$DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponentFromJson(
  Map<String, dynamic> json,
) =>
    DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent()
      ..data = (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyCharacterRenderComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponentToJson(
  DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent instance,
) => <String, dynamic>{
  'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
