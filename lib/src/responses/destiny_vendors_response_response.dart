import '../models/destiny_vendors_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendors_response_response.g.dart';

/// A response containing all of the components for all requested vendors.
@JsonSerializable()
class DestinyVendorsResponseResponse {
	
	/// A response containing all of the components for all requested vendors.
	@JsonKey(name:'Response')
	DestinyVendorsResponse response;
	
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
	DestinyVendorsResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyVendorsResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyVendorsResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyVendorsResponseResponseToJson(this);
}
