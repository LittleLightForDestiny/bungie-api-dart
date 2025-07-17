import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_bulk_get_listing_status_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderBulkGetListingStatusRequest{	
	DestinyFireteamFinderBulkGetListingStatusRequest();


	factory DestinyFireteamFinderBulkGetListingStatusRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderBulkGetListingStatusRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderBulkGetListingStatusRequestToJson(this);

	static Future<DestinyFireteamFinderBulkGetListingStatusRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderBulkGetListingStatusRequest>((json)=>DestinyFireteamFinderBulkGetListingStatusRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}