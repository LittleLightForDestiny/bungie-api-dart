import 'package:bungie_api/src/enums/platform_error_codes.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class BungieNetResponse<T> {
  BungieNetResponse({
    this.response,
    this.errorCode,
    this.throttleSeconds,
    this.errorStatus,
    this.message,
    this.messageData,
    this.detailedErrorTrace,
  });

  @JsonKey(name: 'Response')
  T? response;

  @JsonKey(name: 'ErrorCode', fromJson: decodePlatformErrorCodes, toJson: encodePlatformErrorCodes)
  PlatformErrorCodes? errorCode;

  @JsonKey(name: 'ThrottleSeconds',)
  int? throttleSeconds;

  @JsonKey(name: 'ErrorStatus')
  String? errorStatus;

  @JsonKey(name: 'Message')
  String? message;

  @JsonKey(name: 'MessageData')
  Map<String, String>? messageData;

  @JsonKey(name: 'DetailedErrorTrace')
  String? detailedErrorTrace;
}