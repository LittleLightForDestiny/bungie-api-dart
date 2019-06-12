import '../models/group_application_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_application_response_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class GroupApplicationResponseResponse{
	
	/**  */
	@JsonKey(name:'Response')
	GroupApplicationResponse response;
	
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
	GroupApplicationResponseResponse({
		GroupApplicationResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory GroupApplicationResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupApplicationResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$GroupApplicationResponseResponseToJson(this);
}