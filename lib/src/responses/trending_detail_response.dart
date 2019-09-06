import '../models/trending_detail.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_detail_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class TrendingDetailResponse {
	
	@JsonKey(name:'Response')
	TrendingDetail response;
	
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
	TrendingDetailResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory TrendingDetailResponse.fromJson(Map<String, dynamic> json) => _$TrendingDetailResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$TrendingDetailResponseToJson(this);
}
