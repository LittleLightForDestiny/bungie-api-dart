import '../models/post_search_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'post_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class PostSearchResponseResponse {
	
	@JsonKey(name:'Response')
	PostSearchResponse response;
	
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
	PostSearchResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory PostSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$PostSearchResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$PostSearchResponseResponseToJson(this);
}
