import '../models/destiny_entity_search_result.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_entity_search_result_response.g.dart';

/// The results of a search for Destiny content. This will be improved on over time, I've been doing some experimenting to see what might be useful.
@JsonSerializable()
class DestinyEntitySearchResultResponse {
	
	/// The results of a search for Destiny content. This will be improved on over time, I've been doing some experimenting to see what might be useful.
	@JsonKey(name:'Response')
	DestinyEntitySearchResult response;
	
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
	DestinyEntitySearchResultResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyEntitySearchResultResponse.fromJson(Map<String, dynamic> json) => _$DestinyEntitySearchResultResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyEntitySearchResultResponseToJson(this);
}
