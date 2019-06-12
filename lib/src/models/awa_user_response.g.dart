// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaUserResponse _$AwaUserResponseFromJson(Map<String, dynamic> json) {
  return AwaUserResponse()
    ..selection = json['selection'] as int
    ..correlationId = json['correlationId'] as String
    ..nonce = (json['nonce'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$AwaUserResponseToJson(AwaUserResponse instance) =>
    <String, dynamic>{
      'selection': instance.selection,
      'correlationId': instance.correlationId,
      'nonce': instance.nonce
    };
