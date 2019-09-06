import '../models/group_search_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupSearchResponseResponse {
	
	@JsonKey(name:'Response')
	GroupSearchResponse response;
	
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
	GroupSearchResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory GroupSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupSearchResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$GroupSearchResponseResponseToJson(this);
}
