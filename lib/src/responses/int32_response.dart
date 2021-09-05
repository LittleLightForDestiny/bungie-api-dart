import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'int32_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class Int32Response{
	Int32Response({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory Int32Response.fromJson(Map<String, dynamic> json) => _$Int32ResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	int? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$Int32ResponseToJson(this);
}