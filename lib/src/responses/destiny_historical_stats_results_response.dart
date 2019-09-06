import '../models/destiny_historical_stats_by_period.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalStatsResultsResponse {
	
	@JsonKey(name:'Response')
	Map<String, DestinyHistoricalStatsByPeriod> response;
	
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	DestinyHistoricalStatsResultsResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyHistoricalStatsResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsResultsResponseToJson(this);
}
