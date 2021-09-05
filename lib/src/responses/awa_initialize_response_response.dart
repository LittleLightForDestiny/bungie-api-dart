import '../models/awa_initialize_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'awa_initialize_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class AwaInitializeResponseResponse{
	AwaInitializeResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory AwaInitializeResponseResponse.fromJson(Map<String, dynamic> json) => _$AwaInitializeResponseResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	AwaInitializeResponse? response;
	
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

	Map<String, dynamic> toJson() => _$AwaInitializeResponseResponseToJson(this);
}