import '../models/destiny_historical_weapon_stats_data.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_historical_weapon_stats_data_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyHistoricalWeaponStatsDataResponse extends BungieNetResponse<DestinyHistoricalWeaponStatsData> {
	DestinyHistoricalWeaponStatsDataResponse({
		DestinyHistoricalWeaponStatsData? response,
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

	factory DestinyHistoricalWeaponStatsDataResponse.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalWeaponStatsDataResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsDataResponseToJson(this);

	static Future<DestinyHistoricalWeaponStatsDataResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalWeaponStatsDataResponse>((json)=>DestinyHistoricalWeaponStatsDataResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}