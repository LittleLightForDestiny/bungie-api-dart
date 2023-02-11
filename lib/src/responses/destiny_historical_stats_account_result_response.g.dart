// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_account_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsAccountResultResponse
    _$DestinyHistoricalStatsAccountResultResponseFromJson(
            Map<String, dynamic> json) =>
        DestinyHistoricalStatsAccountResultResponse(
          response: json['Response'] == null
              ? null
              : DestinyHistoricalStatsAccountResult.fromJson(
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

Map<String, dynamic> _$DestinyHistoricalStatsAccountResultResponseToJson(
        DestinyHistoricalStatsAccountResultResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
