// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent
    _$DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemPlugObjectivesComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponentToJson(
            DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
