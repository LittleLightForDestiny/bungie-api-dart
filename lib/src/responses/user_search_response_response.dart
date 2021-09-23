import '../models/user_search_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class UserSearchResponseResponse{
	UserSearchResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory UserSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$UserSearchResponseResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	UserSearchResponse? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$UserSearchResponseResponseToJson(this);
}