import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_offer.dart';

part 'destiny_fireteam_finder_get_lobby_offers_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetLobbyOffersResponse{	
	DestinyFireteamFinderGetLobbyOffersResponse();

	
	@JsonKey(name:'offers')
	List<DestinyFireteamFinderOffer>? offers;
	
	@JsonKey(name:'pageToken')
	String? pageToken;

	factory DestinyFireteamFinderGetLobbyOffersResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetLobbyOffersResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetLobbyOffersResponseToJson(this);

	static Future<DestinyFireteamFinderGetLobbyOffersResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetLobbyOffersResponse>((json)=>DestinyFireteamFinderGetLobbyOffersResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}