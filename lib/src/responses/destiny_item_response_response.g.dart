// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemResponseResponse _$DestinyItemResponseResponseFromJson(
  Map<String, dynamic> json,
) => DestinyItemResponseResponse(
  response:
      json['Response'] == null
          ? null
          : DestinyItemResponse.fromJson(
            json['Response'] as Map<String, dynamic>,
          ),
  errorCode: decodePlatformErrorCodes(json['ErrorCode']),
  throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
  errorStatus: json['ErrorStatus'] as String?,
  message: json['Message'] as String?,
  messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  detailedErrorTrace: json['DetailedErrorTrace'] as String?,
);

Map<String, dynamic> _$DestinyItemResponseResponseToJson(
  DestinyItemResponseResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.toJson(),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
