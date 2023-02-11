// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equip_item_results_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipItemResultsResponse _$DestinyEquipItemResultsResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyEquipItemResultsResponse(
      response: json['Response'] == null
          ? null
          : DestinyEquipItemResults.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$DestinyEquipItemResultsResponseToJson(
        DestinyEquipItemResultsResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
