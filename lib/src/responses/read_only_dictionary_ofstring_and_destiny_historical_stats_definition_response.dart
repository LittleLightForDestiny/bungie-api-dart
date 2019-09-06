import '../models/destiny_historical_stats_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'read_only_dictionary_ofstring_and_destiny_historical_stats_definition_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse {
	
	@JsonKey(name:'Response')
	Map<String, DestinyHistoricalStatsDefinition> response;
	
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
	ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromJson(Map<String, dynamic> json) => _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponseToJson(this);
}
