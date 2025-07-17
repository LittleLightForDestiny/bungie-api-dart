// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_item_public_contract_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentItemPublicContractResponse _$ContentItemPublicContractResponseFromJson(
        Map<String, dynamic> json) =>
    ContentItemPublicContractResponse(
      response: json['Response'] == null
          ? null
          : ContentItemPublicContract.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$ContentItemPublicContractResponseToJson(
        ContentItemPublicContractResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
