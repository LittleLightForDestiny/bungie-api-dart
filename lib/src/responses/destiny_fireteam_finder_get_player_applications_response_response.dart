import '../models/destiny_fireteam_finder_get_player_applications_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_get_player_applications_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderGetPlayerApplicationsResponseResponse extends BungieNetResponse<DestinyFireteamFinderGetPlayerApplicationsResponse> {
	DestinyFireteamFinderGetPlayerApplicationsResponseResponse({
		DestinyFireteamFinderGetPlayerApplicationsResponse? response,
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

	factory DestinyFireteamFinderGetPlayerApplicationsResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderGetPlayerApplicationsResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetPlayerApplicationsResponseResponseToJson(this);

	static Future<DestinyFireteamFinderGetPlayerApplicationsResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetPlayerApplicationsResponseResponse>((json)=>DestinyFireteamFinderGetPlayerApplicationsResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}