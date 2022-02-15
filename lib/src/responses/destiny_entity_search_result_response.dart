import '../models/destiny_entity_search_result.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_entity_search_result_response.g.dart';

/// The results of a search for Destiny content. This will be improved on over time, I've been doing some experimenting to see what might be useful.
@JsonSerializable()
class DestinyEntitySearchResultResponse extends BungieNetResponse<DestinyEntitySearchResult> {
	DestinyEntitySearchResultResponse({
		DestinyEntitySearchResult? response,
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

	factory DestinyEntitySearchResultResponse.fromJson(Map<String, dynamic> json) => _$DestinyEntitySearchResultResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyEntitySearchResultResponseToJson(this);
}