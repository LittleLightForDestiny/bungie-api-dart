
import 'package:json_annotation/json_annotation.dart';
part 'int64_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class int64Response{
	
	/**  */
	@JsonKey(name:'Response')
	String response;
	
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
	int64Response({
		String this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory int64Response.fromJson(Map<String, dynamic> json) => _$int64ResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$int64ResponseToJson(this);
}