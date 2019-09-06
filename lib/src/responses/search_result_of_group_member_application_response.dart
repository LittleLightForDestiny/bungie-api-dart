import '../models/search_result_of_group_member_application.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_group_member_application_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfGroupMemberApplicationResponse {
	
	@JsonKey(name:'Response')
	SearchResultOfGroupMemberApplication response;
	
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
	SearchResultOfGroupMemberApplicationResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfGroupMemberApplicationResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfGroupMemberApplicationResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfGroupMemberApplicationResponseToJson(this);
}
