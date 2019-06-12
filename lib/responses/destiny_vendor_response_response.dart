import '../models/destiny_vendor_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_response_response.g.dart';

/** A response containing all of the components for a vendor. */
@JsonSerializable()
class DestinyVendorResponseResponse{
	
	/** A response containing all of the components for a vendor. */
	@JsonKey(name:'Response')
	DestinyVendorResponse response;
	
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
	DestinyVendorResponseResponse({
		DestinyVendorResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory DestinyVendorResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyVendorResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyVendorResponseResponseToJson(this);
}