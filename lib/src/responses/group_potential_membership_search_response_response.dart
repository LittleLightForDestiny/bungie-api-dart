import '../models/group_potential_membership_search_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_potential_membership_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupPotentialMembershipSearchResponseResponse {
	
	@JsonKey(name:'Response')
	GroupPotentialMembershipSearchResponse response;
	
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
	GroupPotentialMembershipSearchResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory GroupPotentialMembershipSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupPotentialMembershipSearchResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$GroupPotentialMembershipSearchResponseResponseToJson(this);
}
