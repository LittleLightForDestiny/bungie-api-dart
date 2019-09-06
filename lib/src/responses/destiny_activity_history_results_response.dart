import '../models/destiny_activity_history_results.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_history_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyActivityHistoryResultsResponse {
	
	@JsonKey(name:'Response')
	DestinyActivityHistoryResults response;
	
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
	DestinyActivityHistoryResultsResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyActivityHistoryResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyActivityHistoryResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyActivityHistoryResultsResponseToJson(this);
}
