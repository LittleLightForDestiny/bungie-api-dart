// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_item_stats_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyItemStatsComponent
    _$DictionaryComponentResponseOfint64AndDestinyItemStatsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyItemStatsComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemStatsComponent.fromJson(e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyItemStatsComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyItemStatsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
