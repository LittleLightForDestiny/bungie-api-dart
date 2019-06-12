import '../models/search_result_of_group_ban.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_group_ban_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class SearchResultOfGroupBanResponse{
	
	/**  */
	@JsonKey(name:'Response')
	SearchResultOfGroupBan response;
	
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
	SearchResultOfGroupBanResponse({
		SearchResultOfGroupBan this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory SearchResultOfGroupBanResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfGroupBanResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfGroupBanResponseToJson(this);
}