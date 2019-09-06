import '../models/destiny_historical_stats_account_result.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_account_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalStatsAccountResultResponse {
	
	@JsonKey(name:'Response')
	DestinyHistoricalStatsAccountResult response;
	
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
	DestinyHistoricalStatsAccountResultResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyHistoricalStatsAccountResultResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsAccountResultResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsAccountResultResponseToJson(this);
}
