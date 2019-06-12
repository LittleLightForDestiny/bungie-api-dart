// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_leaderboard_results_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLeaderboardResultsResponse _$DestinyLeaderboardResultsResponseFromJson(
    Map<String, dynamic> json) {
  return DestinyLeaderboardResultsResponse(
      response: (json['Response'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(
                  k,
                  e == null
                      ? null
                      : DestinyLeaderboard.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic> _$DestinyLeaderboardResultsResponseToJson(
        DestinyLeaderboardResultsResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
