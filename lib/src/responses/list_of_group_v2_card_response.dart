import '../models/group_v2_card.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_group_v2_card_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGroupV2CardResponse{
	ListOfGroupV2CardResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfGroupV2CardResponse.fromJson(Map<String, dynamic> json) => _$ListOfGroupV2CardResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<GroupV2Card> response;
	
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

	Map<String, dynamic> toJson() => _$ListOfGroupV2CardResponseToJson(this);
}