
import 'package:json_annotation/json_annotation.dart';
part 'boolean_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class booleanResponse{
	
	/**  */
	@JsonKey(name:'Response')
	bool response;
	
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
	booleanResponse({
		bool this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory booleanResponse.fromJson(Map<String, dynamic> json) => _$booleanResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$booleanResponseToJson(this);
}