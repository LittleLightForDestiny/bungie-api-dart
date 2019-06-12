import '../models/user_membership_data.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user_membership_data_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class UserMembershipDataResponse{
	
	/**  */
	@JsonKey(name:'Response')
	UserMembershipData response;
	
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
	UserMembershipDataResponse({
		UserMembershipData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory UserMembershipDataResponse.fromJson(Map<String, dynamic> json) => _$UserMembershipDataResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$UserMembershipDataResponseToJson(this);
}