import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_listing_filter.dart';
import '../enums/destiny_fireteam_finder_lobby_state.dart';

part 'destiny_fireteam_finder_search_listings_by_filters_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderSearchListingsByFiltersRequest{	
	DestinyFireteamFinderSearchListingsByFiltersRequest();

	
	@JsonKey(name:'filters')
	List<DestinyFireteamFinderListingFilter>? filters;
	
	@JsonKey(name:'pageSize')
	int? pageSize;
	
	@JsonKey(name:'pageToken')
	String? pageToken;
	
	@JsonKey(name:'lobbyState',fromJson:decodeDestinyFireteamFinderLobbyState,toJson:encodeDestinyFireteamFinderLobbyState)
	DestinyFireteamFinderLobbyState? lobbyState;

	factory DestinyFireteamFinderSearchListingsByFiltersRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderSearchListingsByFiltersRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderSearchListingsByFiltersRequestToJson(this);

	static Future<DestinyFireteamFinderSearchListingsByFiltersRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderSearchListingsByFiltersRequest>((json)=>DestinyFireteamFinderSearchListingsByFiltersRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}