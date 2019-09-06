import '../models/destiny_collectible_node_detail_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_collectible_node_detail_response_response.g.dart';

/// Returns the detailed information about a Collectible Presentation Node and any Collectibles that are direct descendants.
@JsonSerializable()
class DestinyCollectibleNodeDetailResponseResponse {
	
	/// Returns the detailed information about a Collectible Presentation Node and any Collectibles that are direct descendants.
	@JsonKey(name:'Response')
	DestinyCollectibleNodeDetailResponse response;
	
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
	DestinyCollectibleNodeDetailResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyCollectibleNodeDetailResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleNodeDetailResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyCollectibleNodeDetailResponseResponseToJson(this);
}
