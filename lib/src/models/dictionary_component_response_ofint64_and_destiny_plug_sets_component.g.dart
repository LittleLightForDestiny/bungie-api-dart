// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent
    _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyPlugSetsComponent.fromJson(e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
