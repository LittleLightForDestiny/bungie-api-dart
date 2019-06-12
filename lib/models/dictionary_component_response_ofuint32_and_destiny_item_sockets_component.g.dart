// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemSocketsComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
