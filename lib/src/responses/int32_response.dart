
import 'package:json_annotation/json_annotation.dart';
part 'int32_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class int32Response {
	
	@JsonKey(name:'Response')
	int response;
	
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
	int32Response({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory int32Response.fromJson(Map<String, dynamic> json) => _$int32ResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$int32ResponseToJson(this);
}
