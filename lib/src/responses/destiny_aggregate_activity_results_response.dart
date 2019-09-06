import '../models/destiny_aggregate_activity_results.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_aggregate_activity_results_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyAggregateActivityResultsResponse {
	
	@JsonKey(name:'Response')
	DestinyAggregateActivityResults response;
	
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
	DestinyAggregateActivityResultsResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyAggregateActivityResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsResponseToJson(this);
}
