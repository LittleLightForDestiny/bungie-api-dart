import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_lobby_state.dart';

part 'destiny_fireteam_finder_search_listings_by_clan_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderSearchListingsByClanRequest{	
	DestinyFireteamFinderSearchListingsByClanRequest();

	
	@JsonKey(name:'pageSize')
	int? pageSize;
	
	@JsonKey(name:'pageToken')
	String? pageToken;
	
	@JsonKey(name:'lobbyState',fromJson:decodeDestinyFireteamFinderLobbyState,toJson:encodeDestinyFireteamFinderLobbyState)
	DestinyFireteamFinderLobbyState? lobbyState;

	factory DestinyFireteamFinderSearchListingsByClanRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderSearchListingsByClanRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderSearchListingsByClanRequestToJson(this);

	static Future<DestinyFireteamFinderSearchListingsByClanRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderSearchListingsByClanRequest>((json)=>DestinyFireteamFinderSearchListingsByClanRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}