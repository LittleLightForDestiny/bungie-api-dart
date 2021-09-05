import '../models/destiny_profile_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_response_response.g.dart';

/// The response for GetDestinyProfile, with components for character and item-level data.
@JsonSerializable()
class DestinyProfileResponseResponse{
	DestinyProfileResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyProfileResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyProfileResponseResponseFromJson(json);
	
	
	/// The response for GetDestinyProfile, with components for character and item-level data.
	@JsonKey(name:'Response')
	DestinyProfileResponse? response;
	
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

	Map<String, dynamic> toJson() => _$DestinyProfileResponseResponseToJson(this);
}