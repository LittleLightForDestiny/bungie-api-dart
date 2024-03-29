import '../models/search_result_of_fireteam_summary.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'search_result_of_fireteam_summary_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfFireteamSummaryResponse extends BungieNetResponse<SearchResultOfFireteamSummary> {
	SearchResultOfFireteamSummaryResponse({
		SearchResultOfFireteamSummary? response,
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

	factory SearchResultOfFireteamSummaryResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfFireteamSummaryResponseFromJson(json);

	Map<String, dynamic> toJson() => _$SearchResultOfFireteamSummaryResponseToJson(this);

	static Future<SearchResultOfFireteamSummaryResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SearchResultOfFireteamSummaryResponse>((json)=>SearchResultOfFireteamSummaryResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}