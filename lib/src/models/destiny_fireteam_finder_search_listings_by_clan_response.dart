import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_listing.dart';

part 'destiny_fireteam_finder_search_listings_by_clan_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderSearchListingsByClanResponse{	
	DestinyFireteamFinderSearchListingsByClanResponse();

	
	@JsonKey(name:'listings')
	List<DestinyFireteamFinderListing>? listings;
	
	@JsonKey(name:'pageToken')
	String? pageToken;

	factory DestinyFireteamFinderSearchListingsByClanResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderSearchListingsByClanResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderSearchListingsByClanResponseToJson(this);

	static Future<DestinyFireteamFinderSearchListingsByClanResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderSearchListingsByClanResponse>((json)=>DestinyFireteamFinderSearchListingsByClanResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}