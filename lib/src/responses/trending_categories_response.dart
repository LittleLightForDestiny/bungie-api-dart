import '../models/trending_categories.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_categories_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class TrendingCategoriesResponse{
	TrendingCategoriesResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory TrendingCategoriesResponse.fromJson(Map<String, dynamic> json) => _$TrendingCategoriesResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	TrendingCategories response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes errorCode;
	
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

	Map<String, dynamic> toJson() => _$TrendingCategoriesResponseToJson(this);
}