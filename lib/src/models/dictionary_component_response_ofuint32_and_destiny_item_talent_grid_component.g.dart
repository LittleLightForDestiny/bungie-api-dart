// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyItemTalentGridComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data?.map((k, e) => MapEntry(k, e.toJson())),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
