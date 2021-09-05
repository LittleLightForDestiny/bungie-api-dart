import '../models/core_settings_configuration.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'core_settings_configuration_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CoreSettingsConfigurationResponse{
	CoreSettingsConfigurationResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory CoreSettingsConfigurationResponse.fromJson(Map<String, dynamic> json) => _$CoreSettingsConfigurationResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	CoreSettingsConfiguration? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$CoreSettingsConfigurationResponseToJson(this);
}