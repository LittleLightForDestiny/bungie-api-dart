// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_trending_entry_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfTrendingEntryResponse
    _$SearchResultOfTrendingEntryResponseFromJson(Map<String, dynamic> json) =>
        SearchResultOfTrendingEntryResponse(
          response: json['Response'] == null
              ? null
              : SearchResultOfTrendingEntry.fromJson(
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

Map<String, dynamic> _$SearchResultOfTrendingEntryResponseToJson(
        SearchResultOfTrendingEntryResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
