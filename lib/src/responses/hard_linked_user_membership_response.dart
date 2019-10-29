import '../models/hard_linked_user_membership.dart';

import 'package:json_annotation/json_annotation.dart';
part 'hard_linked_user_membership_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class HardLinkedUserMembershipResponse{
	
	@JsonKey(name:'Response')
	HardLinkedUserMembership response;
	
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
	HardLinkedUserMembershipResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory HardLinkedUserMembershipResponse.fromJson(Map<String, dynamic> json) => _$HardLinkedUserMembershipResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipResponseToJson(this);
}