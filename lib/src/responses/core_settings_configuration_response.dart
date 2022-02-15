import '../models/core_settings_configuration.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'core_settings_configuration_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CoreSettingsConfigurationResponse extends BungieNetResponse<CoreSettingsConfiguration> {
	CoreSettingsConfigurationResponse({
		CoreSettingsConfiguration? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory CoreSettingsConfigurationResponse.fromJson(Map<String, dynamic> json) => _$CoreSettingsConfigurationResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CoreSettingsConfigurationResponseToJson(this);
}