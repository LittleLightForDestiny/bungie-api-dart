// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_only_dictionary_ofstring_and_destiny_historical_stats_definition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse
    _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseFromJson(
            Map<String, dynamic> json) =>
        ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
          response: (json['Response'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyHistoricalStatsDefinition.fromJson(
                    e as Map<String, dynamic>)),
          ),
          errorCode: decodePlatformErrorCodes(json['ErrorCode']),
          throttleSeconds: json['ThrottleSeconds'] as int?,
          errorStatus: json['ErrorStatus'] as String?,
          message: json['Message'] as String?,
          messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          detailedErrorTrace: json['DetailedErrorTrace'] as String?,
        );

Map<String, dynamic>
    _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseToJson(
            ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse
                instance) =>
        <String, dynamic>{
          'Response': instance.response,
          'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
          'ThrottleSeconds': instance.throttleSeconds,
          'ErrorStatus': instance.errorStatus,
          'Message': instance.message,
          'MessageData': instance.messageData,
          'DetailedErrorTrace': instance.detailedErrorTrace,
        };
