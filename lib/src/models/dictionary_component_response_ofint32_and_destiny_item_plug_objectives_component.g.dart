// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent
    _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyItemPlugObjectivesComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
