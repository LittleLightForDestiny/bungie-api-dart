// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemRenderComponent
    _$DictionaryComponentResponseOfint32AndDestinyItemRenderComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint32AndDestinyItemRenderComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemRenderComponent.fromJson(e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyItemRenderComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyItemRenderComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
