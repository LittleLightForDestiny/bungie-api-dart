import '../models/destiny_fireteam_finder_respond_to_application_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_respond_to_application_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderRespondToApplicationResponseResponse extends BungieNetResponse<DestinyFireteamFinderRespondToApplicationResponse> {
	DestinyFireteamFinderRespondToApplicationResponseResponse({
		DestinyFireteamFinderRespondToApplicationResponse? response,
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

	factory DestinyFireteamFinderRespondToApplicationResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderRespondToApplicationResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToApplicationResponseResponseToJson(this);

	static Future<DestinyFireteamFinderRespondToApplicationResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToApplicationResponseResponse>((json)=>DestinyFireteamFinderRespondToApplicationResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}