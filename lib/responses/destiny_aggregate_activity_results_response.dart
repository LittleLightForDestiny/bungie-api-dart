import '../models/destiny_aggregate_activity_results.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_aggregate_activity_results_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class DestinyAggregateActivityResultsResponse{
	
	/**  */
	@JsonKey(name:'Response')
	DestinyAggregateActivityResults response;
	
	/**  */
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	/**  */
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	/**  */
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	/**  */
	@JsonKey(name:'Message')
	String message;
	
	/**  */
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	/**  */
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	DestinyAggregateActivityResultsResponse({
		DestinyAggregateActivityResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory DestinyAggregateActivityResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsResponseToJson(this);
}