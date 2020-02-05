import '../models/general_user.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_general_user_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGeneralUserResponse{
	ListOfGeneralUserResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfGeneralUserResponse.fromJson(Map<String, dynamic> json) => _$ListOfGeneralUserResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<GeneralUser> response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes errorCode;
	
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

	Map<String, dynamic> toJson() => _$ListOfGeneralUserResponseToJson(this);
}