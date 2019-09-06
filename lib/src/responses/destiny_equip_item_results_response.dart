import '../models/destiny_equip_item_results.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_equip_item_results_response.g.dart';

/// The results of a bulk Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResultsResponse {
	
	/// The results of a bulk Equipping operation performed through the Destiny API.
	@JsonKey(name:'Response')
	DestinyEquipItemResults response;
	
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
	DestinyEquipItemResultsResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyEquipItemResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyEquipItemResultsResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyEquipItemResultsResponseToJson(this);
}
