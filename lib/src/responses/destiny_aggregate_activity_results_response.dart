import '../models/destiny_aggregate_activity_results.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_aggregate_activity_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyAggregateActivityResultsResponse extends BungieNetResponse<DestinyAggregateActivityResults> {
	DestinyAggregateActivityResultsResponse({
		DestinyAggregateActivityResults? response,
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

	factory DestinyAggregateActivityResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityResultsResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsResponseToJson(this);

	static Future<DestinyAggregateActivityResultsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyAggregateActivityResultsResponse>((json)=>DestinyAggregateActivityResultsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}