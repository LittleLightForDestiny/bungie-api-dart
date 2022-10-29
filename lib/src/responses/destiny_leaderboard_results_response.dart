import '../models/destiny_leaderboard.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_leaderboard_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyLeaderboardResultsResponse extends BungieNetResponse<Map<String, Map<String, DestinyLeaderboard>>> {
	DestinyLeaderboardResultsResponse({
		Map<String, Map<String, DestinyLeaderboard>>? response,
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

	factory DestinyLeaderboardResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyLeaderboardResultsResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyLeaderboardResultsResponseToJson(this);

	static Future<DestinyLeaderboardResultsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLeaderboardResultsResponse>((json)=>DestinyLeaderboardResultsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}