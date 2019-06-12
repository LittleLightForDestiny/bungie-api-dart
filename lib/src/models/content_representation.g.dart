// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_representation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentRepresentation _$ContentRepresentationFromJson(
    Map<String, dynamic> json) {
  return ContentRepresentation()
    ..name = json['name'] as String
    ..path = json['path'] as String
    ..validationString = json['validationString'] as String;
}

Map<String, dynamic> _$ContentRepresentationToJson(
        ContentRepresentation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'validationString': instance.validationString
    };
