import '../models/destiny_historical_stats_account_result.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_historical_stats_account_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalStatsAccountResultResponse extends BungieNetResponse<DestinyHistoricalStatsAccountResult> {
	DestinyHistoricalStatsAccountResultResponse({
		DestinyHistoricalStatsAccountResult? response,
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

	factory DestinyHistoricalStatsAccountResultResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsAccountResultResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsAccountResultResponseToJson(this);

	static Future<DestinyHistoricalStatsAccountResultResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsAccountResultResponse>((json)=>DestinyHistoricalStatsAccountResultResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}