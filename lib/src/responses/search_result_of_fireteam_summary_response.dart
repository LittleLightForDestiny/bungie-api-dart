import '../models/search_result_of_fireteam_summary.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_fireteam_summary_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfFireteamSummaryResponse{
	SearchResultOfFireteamSummaryResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfFireteamSummaryResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfFireteamSummaryResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	SearchResultOfFireteamSummary response;
	
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

	Map<String, dynamic> toJson() => _$SearchResultOfFireteamSummaryResponseToJson(this);
}