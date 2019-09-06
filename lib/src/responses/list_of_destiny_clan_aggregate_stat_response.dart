import '../models/destiny_clan_aggregate_stat.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_destiny_clan_aggregate_stat_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfDestinyClanAggregateStatResponse {
	
	@JsonKey(name:'Response')
	List<DestinyClanAggregateStat> response;
	
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
	ListOfDestinyClanAggregateStatResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfDestinyClanAggregateStatResponse.fromJson(Map<String, dynamic> json) => _$ListOfDestinyClanAggregateStatResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ListOfDestinyClanAggregateStatResponseToJson(this);
}
