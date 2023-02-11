// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent
    _$DictionaryComponentResponseOfint32AndDestinyItemInstanceComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyItemInstanceComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyItemInstanceComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
