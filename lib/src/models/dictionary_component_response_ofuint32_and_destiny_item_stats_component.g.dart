// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                DestinyItemStatsComponent.fromJson(e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
