// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterRecordsComponent
    _$SingleComponentResponseOfDestinyCharacterRecordsComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyCharacterRecordsComponent()
    ..data = json['data'] == null
        ? null
        : DestinyCharacterRecordsComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyCharacterRecordsComponentToJson(
        SingleComponentResponseOfDestinyCharacterRecordsComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
