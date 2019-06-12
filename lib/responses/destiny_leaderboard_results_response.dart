import '../models/destiny_leaderboard.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_leaderboard_results_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class DestinyLeaderboardResultsResponse{
	
	/**  */
	@JsonKey(name:'Response')
	Map<String, Map<String, DestinyLeaderboard>> response;
	
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
	DestinyLeaderboardResultsResponse({
		Map<String, Map<String, DestinyLeaderboard>> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory DestinyLeaderboardResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyLeaderboardResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyLeaderboardResultsResponseToJson(this);
}