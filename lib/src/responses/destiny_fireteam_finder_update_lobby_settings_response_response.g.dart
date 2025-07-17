// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_update_lobby_settings_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderUpdateLobbySettingsResponseResponse
_$DestinyFireteamFinderUpdateLobbySettingsResponseResponseFromJson(
  Map<String, dynamic> json,
) => DestinyFireteamFinderUpdateLobbySettingsResponseResponse(
  response:
      json['Response'] == null
          ? null
          : DestinyFireteamFinderUpdateLobbySettingsResponse.fromJson(
            json['Response'] as Map<String, dynamic>,
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
_$DestinyFireteamFinderUpdateLobbySettingsResponseResponseToJson(
  DestinyFireteamFinderUpdateLobbySettingsResponseResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.toJson(),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
