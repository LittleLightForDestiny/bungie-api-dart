import '../models/destiny_equip_item_results.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_equip_item_results_response.g.dart';

/// The results of a bulk Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResultsResponse extends BungieNetResponse<DestinyEquipItemResults> {
	DestinyEquipItemResultsResponse({
		DestinyEquipItemResults? response,
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

	factory DestinyEquipItemResultsResponse.fromJson(Map<String, dynamic> json) => _$DestinyEquipItemResultsResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyEquipItemResultsResponseToJson(this);

	static Future<DestinyEquipItemResultsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEquipItemResultsResponse>((json)=>DestinyEquipItemResultsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}