import '../models/destiny_clan_aggregate_stat.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'list_of_destiny_clan_aggregate_stat_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfDestinyClanAggregateStatResponse extends BungieNetResponse<List<DestinyClanAggregateStat>> {
	ListOfDestinyClanAggregateStatResponse({
		List<DestinyClanAggregateStat>? response,
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

	factory ListOfDestinyClanAggregateStatResponse.fromJson(Map<String, dynamic> json) => _$ListOfDestinyClanAggregateStatResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfDestinyClanAggregateStatResponseToJson(this);

	static Future<ListOfDestinyClanAggregateStatResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ListOfDestinyClanAggregateStatResponse>((json)=>ListOfDestinyClanAggregateStatResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}