import '../models/awa_authorization_result.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'awa_authorization_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class AwaAuthorizationResultResponse extends BungieNetResponse<AwaAuthorizationResult> {
	AwaAuthorizationResultResponse({
		AwaAuthorizationResult? response,
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

	factory AwaAuthorizationResultResponse.fromJson(Map<String, dynamic> json) => _$AwaAuthorizationResultResponseFromJson(json);

	Map<String, dynamic> toJson() => _$AwaAuthorizationResultResponseToJson(this);
}