// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_initialize_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaInitializeResponse _$AwaInitializeResponseFromJson(
    Map<String, dynamic> json) {
  return AwaInitializeResponse()
    ..correlationId = json['correlationId'] as String
    ..sentToSelf = json['sentToSelf'] as bool;
}

Map<String, dynamic> _$AwaInitializeResponseToJson(
        AwaInitializeResponse instance) =>
    <String, dynamic>{
      'correlationId': instance.correlationId,
      'sentToSelf': instance.sentToSelf
    };
