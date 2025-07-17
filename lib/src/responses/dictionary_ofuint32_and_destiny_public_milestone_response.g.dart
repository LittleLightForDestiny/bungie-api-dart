// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_ofuint32_and_destiny_public_milestone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryOfuint32AndDestinyPublicMilestoneResponse
_$DictionaryOfuint32AndDestinyPublicMilestoneResponseFromJson(
  Map<String, dynamic> json,
) => DictionaryOfuint32AndDestinyPublicMilestoneResponse(
  response: (json['Response'] as Map<String, dynamic>?)?.map(
    (k, e) =>
        MapEntry(k, DestinyPublicMilestone.fromJson(e as Map<String, dynamic>)),
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
_$DictionaryOfuint32AndDestinyPublicMilestoneResponseToJson(
  DictionaryOfuint32AndDestinyPublicMilestoneResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.map((k, e) => MapEntry(k, e.toJson())),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
