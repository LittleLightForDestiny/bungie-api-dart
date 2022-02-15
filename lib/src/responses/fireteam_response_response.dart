import '../models/fireteam_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'fireteam_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class FireteamResponseResponse extends BungieNetResponse<FireteamResponse> {
	FireteamResponseResponse({
		FireteamResponse? response,
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

	factory FireteamResponseResponse.fromJson(Map<String, dynamic> json) => _$FireteamResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$FireteamResponseResponseToJson(this);
}