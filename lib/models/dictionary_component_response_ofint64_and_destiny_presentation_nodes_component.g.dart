// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent
    _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyPresentationNodesComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
