import '../models/search_result_of_fireteam_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_fireteam_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfFireteamResponseResponse {
	
	@JsonKey(name:'Response')
	SearchResultOfFireteamResponse response;
	
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
	SearchResultOfFireteamResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfFireteamResponseResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfFireteamResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfFireteamResponseResponseToJson(this);
}
