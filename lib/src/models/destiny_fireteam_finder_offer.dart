import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_offer_state.dart';
import 'destiny_fireteam_finder_player_id.dart';

part 'destiny_fireteam_finder_offer.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOffer{	
	DestinyFireteamFinderOffer();

	
	@JsonKey(name:'offerId')
	String? offerId;
	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'revision')
	int? revision;
	
	@JsonKey(name:'state',fromJson:decodeDestinyFireteamFinderOfferState,toJson:encodeDestinyFireteamFinderOfferState)
	DestinyFireteamFinderOfferState? state;
	
	@JsonKey(name:'targetId')
	DestinyFireteamFinderPlayerId? targetId;
	
	@JsonKey(name:'applicationId')
	String? applicationId;
	
	@JsonKey(name:'createdDateTime')
	String? createdDateTime;

	factory DestinyFireteamFinderOffer.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOfferFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOfferToJson(this);

	static Future<DestinyFireteamFinderOffer> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOffer>((json)=>DestinyFireteamFinderOffer.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}