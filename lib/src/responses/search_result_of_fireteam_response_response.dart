import '../models/search_result_of_fireteam_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_fireteam_response_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class SearchResultOfFireteamResponseResponse{
	
	/**  */
	@JsonKey(name:'Response')
	SearchResultOfFireteamResponse response;
	
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
	SearchResultOfFireteamResponseResponse({
		SearchResultOfFireteamResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory SearchResultOfFireteamResponseResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfFireteamResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfFireteamResponseResponseToJson(this);
}