// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent()
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
    _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
