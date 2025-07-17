import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_listing.dart';

part 'destiny_fireteam_finder_search_listings_by_filters_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderSearchListingsByFiltersResponse{	
	DestinyFireteamFinderSearchListingsByFiltersResponse();

	
	@JsonKey(name:'listings')
	List<DestinyFireteamFinderListing>? listings;
	
	@JsonKey(name:'pageToken')
	String? pageToken;

	factory DestinyFireteamFinderSearchListingsByFiltersResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderSearchListingsByFiltersResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderSearchListingsByFiltersResponseToJson(this);

	static Future<DestinyFireteamFinderSearchListingsByFiltersResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderSearchListingsByFiltersResponse>((json)=>DestinyFireteamFinderSearchListingsByFiltersResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}