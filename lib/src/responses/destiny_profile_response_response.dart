import '../models/destiny_profile_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_response_response.g.dart';

/** The response for GetDestinyProfile, with components for character and item-level data. */
@JsonSerializable()
class DestinyProfileResponseResponse{
	
	/** The response for GetDestinyProfile, with components for character and item-level data. */
	@JsonKey(name:'Response')
	DestinyProfileResponse response;
	
	/**  */
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	/**  */
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	/**  */
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	/**  */
	@JsonKey(name:'Message')
	String message;
	
	/**  */
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	/**  */
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	DestinyProfileResponseResponse({
		DestinyProfileResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory DestinyProfileResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyProfileResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyProfileResponseResponseToJson(this);
}