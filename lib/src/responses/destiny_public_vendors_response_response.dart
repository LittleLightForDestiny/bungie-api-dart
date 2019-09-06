import '../models/destiny_public_vendors_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_vendors_response_response.g.dart';

/// A response containing all valid components for the public Vendors endpoint.
///  It is a decisively smaller subset of data compared to what we can get when we know the specific user making the request.
///  If you want any of the other data - item details, whether or not you can buy it, etc... you'll have to call in the context of a character. I know, sad but true.
@JsonSerializable()
class DestinyPublicVendorsResponseResponse {
	
	/// A response containing all valid components for the public Vendors endpoint.
	///  It is a decisively smaller subset of data compared to what we can get when we know the specific user making the request.
	///  If you want any of the other data - item details, whether or not you can buy it, etc... you'll have to call in the context of a character. I know, sad but true.
	@JsonKey(name:'Response')
	DestinyPublicVendorsResponse response;
	
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
	DestinyPublicVendorsResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyPublicVendorsResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyPublicVendorsResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyPublicVendorsResponseResponseToJson(this);
}
