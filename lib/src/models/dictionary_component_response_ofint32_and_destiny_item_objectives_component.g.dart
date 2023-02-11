// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent
    _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyItemObjectivesComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
