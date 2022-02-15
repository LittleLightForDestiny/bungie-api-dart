import '../models/trending_categories.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'trending_categories_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class TrendingCategoriesResponse extends BungieNetResponse<TrendingCategories> {
	TrendingCategoriesResponse({
		TrendingCategories? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory TrendingCategoriesResponse.fromJson(Map<String, dynamic> json) => _$TrendingCategoriesResponseFromJson(json);

	Map<String, dynamic> toJson() => _$TrendingCategoriesResponseToJson(this);
}