// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_character_progression_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent
    _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyCharacterProgressionComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
