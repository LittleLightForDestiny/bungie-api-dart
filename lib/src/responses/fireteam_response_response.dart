import '../models/fireteam_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'fireteam_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class FireteamResponseResponse {
	
	@JsonKey(name:'Response')
	FireteamResponse response;
	
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
	FireteamResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory FireteamResponseResponse.fromJson(Map<String, dynamic> json) => _$FireteamResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$FireteamResponseResponseToJson(this);
}
