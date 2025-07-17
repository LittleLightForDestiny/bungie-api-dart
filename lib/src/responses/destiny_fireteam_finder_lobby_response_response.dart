import '../models/destiny_fireteam_finder_lobby_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_lobby_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderLobbyResponseResponse extends BungieNetResponse<DestinyFireteamFinderLobbyResponse> {
	DestinyFireteamFinderLobbyResponseResponse({
		DestinyFireteamFinderLobbyResponse? response,
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

	factory DestinyFireteamFinderLobbyResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderLobbyResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderLobbyResponseResponseToJson(this);

	static Future<DestinyFireteamFinderLobbyResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderLobbyResponseResponse>((json)=>DestinyFireteamFinderLobbyResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}