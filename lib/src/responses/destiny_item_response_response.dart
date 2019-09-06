import '../models/destiny_item_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_response_response.g.dart';

/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition.
@JsonSerializable()
class DestinyItemResponseResponse {
	
	/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition.
	@JsonKey(name:'Response')
	DestinyItemResponse response;
	
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
	DestinyItemResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyItemResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyItemResponseResponseToJson(this);
}
