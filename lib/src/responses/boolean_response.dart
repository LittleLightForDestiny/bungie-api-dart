
import 'package:json_annotation/json_annotation.dart';
part 'boolean_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class BooleanResponse{
	BooleanResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory BooleanResponse.fromJson(Map<String, dynamic> json) => _$BooleanResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	bool response;
	
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

	Map<String, dynamic> toJson() => _$BooleanResponseToJson(this);
}