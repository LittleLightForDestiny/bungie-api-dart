// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_get_credential_types_for_account_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfGetCredentialTypesForAccountResponseResponse
_$ListOfGetCredentialTypesForAccountResponseResponseFromJson(
  Map<String, dynamic> json,
) => ListOfGetCredentialTypesForAccountResponseResponse(
  response:
      (json['Response'] as List<dynamic>?)
          ?.map(
            (e) => GetCredentialTypesForAccountResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  errorCode: decodePlatformErrorCodes(json['ErrorCode']),
  throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
  errorStatus: json['ErrorStatus'] as String?,
  message: json['Message'] as String?,
  messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  detailedErrorTrace: json['DetailedErrorTrace'] as String?,
);

Map<String, dynamic> _$ListOfGetCredentialTypesForAccountResponseResponseToJson(
  ListOfGetCredentialTypesForAccountResponseResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.map((e) => e.toJson()).toList(),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
