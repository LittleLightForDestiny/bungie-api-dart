// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent
    _$DictionaryComponentResponseOfint64AndDestinyItemInstanceComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyItemInstanceComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyItemInstanceComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
