// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_item_reusable_plugs_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent
    _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent()
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
    _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
