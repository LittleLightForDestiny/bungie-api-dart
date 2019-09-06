import '../models/search_result_of_community_live_status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_community_live_status_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfCommunityLiveStatusResponse {
	
	@JsonKey(name:'Response')
	SearchResultOfCommunityLiveStatus response;
	
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
	SearchResultOfCommunityLiveStatusResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfCommunityLiveStatusResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfCommunityLiveStatusResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfCommunityLiveStatusResponseToJson(this);
}
