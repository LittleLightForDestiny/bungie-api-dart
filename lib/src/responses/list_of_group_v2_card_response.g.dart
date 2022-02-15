// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_group_v2_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfGroupV2CardResponse _$ListOfGroupV2CardResponseFromJson(
        Map<String, dynamic> json) =>
    ListOfGroupV2CardResponse(
      response: (json['Response'] as List<dynamic>?)
          ?.map((e) => GroupV2Card.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ListOfGroupV2CardResponseToJson(
        ListOfGroupV2CardResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
