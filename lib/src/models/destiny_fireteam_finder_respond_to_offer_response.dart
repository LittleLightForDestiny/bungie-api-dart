import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_offer_state.dart';

part 'destiny_fireteam_finder_respond_to_offer_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToOfferResponse{	
	DestinyFireteamFinderRespondToOfferResponse();

	
	@JsonKey(name:'offerId')
	String? offerId;
	
	@JsonKey(name:'revision')
	int? revision;
	
	@JsonKey(name:'state',fromJson:decodeDestinyFireteamFinderOfferState,toJson:encodeDestinyFireteamFinderOfferState)
	DestinyFireteamFinderOfferState? state;

	factory DestinyFireteamFinderRespondToOfferResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToOfferResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToOfferResponseToJson(this);

	static Future<DestinyFireteamFinderRespondToOfferResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToOfferResponse>((json)=>DestinyFireteamFinderRespondToOfferResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}