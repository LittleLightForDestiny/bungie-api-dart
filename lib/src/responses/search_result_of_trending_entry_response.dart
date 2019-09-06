import '../models/search_result_of_trending_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_trending_entry_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfTrendingEntryResponse {
	
	@JsonKey(name:'Response')
	SearchResultOfTrendingEntry response;
	
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
	SearchResultOfTrendingEntryResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfTrendingEntryResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfTrendingEntryResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfTrendingEntryResponseToJson(this);
}
