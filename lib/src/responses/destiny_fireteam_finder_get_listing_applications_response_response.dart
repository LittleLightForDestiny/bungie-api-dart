import '../models/destiny_fireteam_finder_get_listing_applications_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_fireteam_finder_get_listing_applications_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyFireteamFinderGetListingApplicationsResponseResponse extends BungieNetResponse<DestinyFireteamFinderGetListingApplicationsResponse> {
	DestinyFireteamFinderGetListingApplicationsResponseResponse({
		DestinyFireteamFinderGetListingApplicationsResponse? response,
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

	factory DestinyFireteamFinderGetListingApplicationsResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyFireteamFinderGetListingApplicationsResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetListingApplicationsResponseResponseToJson(this);

	static Future<DestinyFireteamFinderGetListingApplicationsResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetListingApplicationsResponseResponse>((json)=>DestinyFireteamFinderGetListingApplicationsResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}