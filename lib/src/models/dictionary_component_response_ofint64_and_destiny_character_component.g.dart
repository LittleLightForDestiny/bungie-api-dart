// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_character_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyCharacterComponent
    _$DictionaryComponentResponseOfint64AndDestinyCharacterComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint64AndDestinyCharacterComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                DestinyCharacterComponent.fromJson(e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyCharacterComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyCharacterComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
