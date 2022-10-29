import '../models/destiny_activity_history_results.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_activity_history_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyActivityHistoryResultsResponse extends BungieNetResponse<DestinyActivityHistoryResults> {
	DestinyActivityHistoryResultsResponse({
		DestinyActivityHistoryResults? response,
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

	factory DestinyActivityHistoryResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyActivityHistoryResultsResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyActivityHistoryResultsResponseToJson(this);

	static Future<DestinyActivityHistoryResultsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityHistoryResultsResponse>((json)=>DestinyActivityHistoryResultsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}