import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_listing_status.dart';

part 'destiny_fireteam_finder_bulk_get_listing_status_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderBulkGetListingStatusResponse{	
	DestinyFireteamFinderBulkGetListingStatusResponse();

	
	@JsonKey(name:'listingStatus')
	List<DestinyFireteamFinderListingStatus>? listingStatus;

	factory DestinyFireteamFinderBulkGetListingStatusResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderBulkGetListingStatusResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderBulkGetListingStatusResponseToJson(this);

	static Future<DestinyFireteamFinderBulkGetListingStatusResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderBulkGetListingStatusResponse>((json)=>DestinyFireteamFinderBulkGetListingStatusResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}