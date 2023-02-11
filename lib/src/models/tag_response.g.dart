// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagResponse _$TagResponseFromJson(Map<String, dynamic> json) => TagResponse()
  ..tagText = json['tagText'] as String?
  ..ignoreStatus = json['ignoreStatus'] == null
      ? null
      : IgnoreResponse.fromJson(json['ignoreStatus'] as Map<String, dynamic>);

Map<String, dynamic> _$TagResponseToJson(TagResponse instance) =>
    <String, dynamic>{
      'tagText': instance.tagText,
      'ignoreStatus': instance.ignoreStatus?.toJson(),
    };
