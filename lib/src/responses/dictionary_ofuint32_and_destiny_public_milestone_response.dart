import '../models/destiny_public_milestone.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_ofuint32_and_destiny_public_milestone_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfuint32AndDestinyPublicMilestoneResponse{
	DictionaryOfuint32AndDestinyPublicMilestoneResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfuint32AndDestinyPublicMilestoneResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	Map<String, DestinyPublicMilestone> response;
	
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

	Map<String, dynamic> toJson() => _$DictionaryOfuint32AndDestinyPublicMilestoneResponseToJson(this);
}