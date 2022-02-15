import '../models/api_usage.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'api_usage_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ApiUsageResponse extends BungieNetResponse<ApiUsage> {
	ApiUsageResponse({
		ApiUsage? response,
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

	factory ApiUsageResponse.fromJson(Map<String, dynamic> json) => _$ApiUsageResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ApiUsageResponseToJson(this);
}