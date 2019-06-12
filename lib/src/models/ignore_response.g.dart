// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ignore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgnoreResponse _$IgnoreResponseFromJson(Map<String, dynamic> json) {
  return IgnoreResponse()
    ..isIgnored = json['isIgnored'] as bool
    ..ignoreFlags = json['ignoreFlags'] as int;
}

Map<String, dynamic> _$IgnoreResponseToJson(IgnoreResponse instance) =>
    <String, dynamic>{
      'isIgnored': instance.isIgnored,
      'ignoreFlags': instance.ignoreFlags
    };
