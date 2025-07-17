import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_offer.dart';

part 'destiny_fireteam_finder_get_player_offers_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetPlayerOffersResponse{	
	DestinyFireteamFinderGetPlayerOffersResponse();

	
	/// All offers that this player has recieved.
	@JsonKey(name:'offers')
	List<DestinyFireteamFinderOffer>? offers;

	factory DestinyFireteamFinderGetPlayerOffersResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetPlayerOffersResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetPlayerOffersResponseToJson(this);

	static Future<DestinyFireteamFinderGetPlayerOffersResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetPlayerOffersResponse>((json)=>DestinyFireteamFinderGetPlayerOffersResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}