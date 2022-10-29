import '../models/destiny_historical_stats_by_period.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_historical_stats_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalStatsResultsResponse extends BungieNetResponse<Map<String, DestinyHistoricalStatsByPeriod>> {
	DestinyHistoricalStatsResultsResponse({
		Map<String, DestinyHistoricalStatsByPeriod>? response,
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

	factory DestinyHistoricalStatsResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsResultsResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsResultsResponseToJson(this);

	static Future<DestinyHistoricalStatsResultsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsResultsResponse>((json)=>DestinyHistoricalStatsResultsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}