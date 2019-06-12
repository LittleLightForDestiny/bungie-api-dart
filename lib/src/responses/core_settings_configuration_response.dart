import '../models/core_settings_configuration.dart';

import 'package:json_annotation/json_annotation.dart';
part 'core_settings_configuration_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class CoreSettingsConfigurationResponse{
	
	/**  */
	@JsonKey(name:'Response')
	CoreSettingsConfiguration response;
	
	/**  */
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	/**  */
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	/**  */
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	/**  */
	@JsonKey(name:'Message')
	String message;
	
	/**  */
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	/**  */
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	CoreSettingsConfigurationResponse({
		CoreSettingsConfiguration this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory CoreSettingsConfigurationResponse.fromJson(Map<String, dynamic> json) => _$CoreSettingsConfigurationResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CoreSettingsConfigurationResponseToJson(this);
}