// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iread_only_collection_of_content_item_public_contract_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IReadOnlyCollectionOfContentItemPublicContractResponse
_$IReadOnlyCollectionOfContentItemPublicContractResponseFromJson(
  Map<String, dynamic> json,
) => IReadOnlyCollectionOfContentItemPublicContractResponse(
  response: (json['Response'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
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

Map<String, dynamic>
_$IReadOnlyCollectionOfContentItemPublicContractResponseToJson(
  IReadOnlyCollectionOfContentItemPublicContractResponse instance,
) => <String, dynamic>{
  'Response': instance.response,
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
