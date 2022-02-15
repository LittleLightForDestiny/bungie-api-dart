// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celist_of_partner_offer_sku_history_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CEListOfPartnerOfferSkuHistoryResponseResponse
    _$CEListOfPartnerOfferSkuHistoryResponseResponseFromJson(
            Map<String, dynamic> json) =>
        CEListOfPartnerOfferSkuHistoryResponseResponse(
          response: (json['Response'] as List<dynamic>?)
              ?.map((e) => PartnerOfferSkuHistoryResponse.fromJson(
                  e as Map<String, dynamic>))
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

Map<String, dynamic> _$CEListOfPartnerOfferSkuHistoryResponseResponseToJson(
        CEListOfPartnerOfferSkuHistoryResponseResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
