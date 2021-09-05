import '../models/destiny_historical_weapon_stats_data.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_weapon_stats_data_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalWeaponStatsDataResponse{
	DestinyHistoricalWeaponStatsDataResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyHistoricalWeaponStatsDataResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalWeaponStatsDataResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	DestinyHistoricalWeaponStatsData? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsDataResponseToJson(this);
}