import '../models/destiny_vendor_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_response_response.g.dart';

/// A response containing all of the components for a vendor.
@JsonSerializable()
class DestinyVendorResponseResponse {
	
	/// A response containing all of the components for a vendor.
	@JsonKey(name:'Response')
	DestinyVendorResponse response;
	
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
	DestinyVendorResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyVendorResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyVendorResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyVendorResponseResponseToJson(this);
}
