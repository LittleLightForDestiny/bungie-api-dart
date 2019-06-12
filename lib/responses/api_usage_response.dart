import '../models/api_usage.dart';

import 'package:json_annotation/json_annotation.dart';
part 'api_usage_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class ApiUsageResponse{
	
	/**  */
	@JsonKey(name:'Response')
	ApiUsage response;
	
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
	ApiUsageResponse({
		ApiUsage this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory ApiUsageResponse.fromJson(Map<String, dynamic> json) => _$ApiUsageResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ApiUsageResponseToJson(this);
}