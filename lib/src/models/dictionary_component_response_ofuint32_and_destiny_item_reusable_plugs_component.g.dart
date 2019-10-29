// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_reusable_plugs_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemReusablePlugsComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
