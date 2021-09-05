import '../models/user_info_card.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'ienumerable_of_user_info_card_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class IEnumerableOfUserInfoCardResponse{
	IEnumerableOfUserInfoCardResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory IEnumerableOfUserInfoCardResponse.fromJson(Map<String, dynamic> json) => _$IEnumerableOfUserInfoCardResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<UserInfoCard>? response;
	
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

	Map<String, dynamic> toJson() => _$IEnumerableOfUserInfoCardResponseToJson(this);
}