import '../models/destiny_fireteam_finder_get_lobby_offers_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_get_lobby_offers_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderGetLobbyOffersResponseResponse extends BungieNetResponse<DestinyFireteamFinderGetLobbyOffersResponse> {
	DestinyFireteamFinderGetLobbyOffersResponseResponse({
		DestinyFireteamFinderGetLobbyOffersResponse? response,
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

	factory DestinyFireteamFinderGetLobbyOffersResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderGetLobbyOffersResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetLobbyOffersResponseResponseToJson(this);

	static Future<DestinyFireteamFinderGetLobbyOffersResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetLobbyOffersResponseResponse>((json)=>DestinyFireteamFinderGetLobbyOffersResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}