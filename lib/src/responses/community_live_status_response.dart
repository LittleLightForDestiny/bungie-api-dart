import '../models/community_live_status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'community_live_status_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CommunityLiveStatusResponse {
	
	@JsonKey(name:'Response')
	CommunityLiveStatus response;
	
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
	CommunityLiveStatusResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory CommunityLiveStatusResponse.fromJson(Map<String, dynamic> json) => _$CommunityLiveStatusResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CommunityLiveStatusResponseToJson(this);
}
