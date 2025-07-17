// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaUserResponse _$AwaUserResponseFromJson(Map<String, dynamic> json) =>
    AwaUserResponse()
      ..selection = decodeAwaUserSelection(json['selection'])
      ..correlationId = json['correlationId'] as String?
      ..nonce =
          (json['nonce'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$AwaUserResponseToJson(AwaUserResponse instance) =>
    <String, dynamic>{
      'selection': encodeAwaUserSelection(instance.selection),
      'correlationId': instance.correlationId,
      'nonce': instance.nonce,
    };
