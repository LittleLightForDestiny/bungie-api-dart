import '../models/user_theme.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_user_theme_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfUserThemeResponse {
	
	@JsonKey(name:'Response')
	List<UserTheme> response;
	
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
	ListOfUserThemeResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfUserThemeResponse.fromJson(Map<String, dynamic> json) => _$ListOfUserThemeResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ListOfUserThemeResponseToJson(this);
}
