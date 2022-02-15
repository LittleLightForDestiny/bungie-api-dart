// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_entity_action_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfEntityActionResultResponse _$ListOfEntityActionResultResponseFromJson(
        Map<String, dynamic> json) =>
    ListOfEntityActionResultResponse(
      response: (json['Response'] as List<dynamic>?)
          ?.map((e) => EntityActionResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$ListOfEntityActionResultResponseToJson(
        ListOfEntityActionResultResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
