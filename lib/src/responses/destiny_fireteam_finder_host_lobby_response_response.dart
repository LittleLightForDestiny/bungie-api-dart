import '../models/destiny_fireteam_finder_host_lobby_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_host_lobby_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderHostLobbyResponseResponse extends BungieNetResponse<DestinyFireteamFinderHostLobbyResponse> {
	DestinyFireteamFinderHostLobbyResponseResponse({
		DestinyFireteamFinderHostLobbyResponse? response,
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

	factory DestinyFireteamFinderHostLobbyResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderHostLobbyResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderHostLobbyResponseResponseToJson(this);

	static Future<DestinyFireteamFinderHostLobbyResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderHostLobbyResponseResponse>((json)=>DestinyFireteamFinderHostLobbyResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}