import '../models/destiny_historical_stats_definition.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'read_only_dictionary_ofstring_and_destiny_historical_stats_definition_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse extends BungieNetResponse<Map<String, DestinyHistoricalStatsDefinition>> {
	ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse({
		Map<String, DestinyHistoricalStatsDefinition>? response,
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

	factory ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromJson(Map<String, dynamic> json) => _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseToJson(this);
}