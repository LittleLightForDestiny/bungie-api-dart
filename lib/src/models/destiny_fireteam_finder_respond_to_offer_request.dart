import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_respond_to_offer_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToOfferRequest{	
	DestinyFireteamFinderRespondToOfferRequest();

	
	@JsonKey(name:'accepted')
	bool? accepted;

	factory DestinyFireteamFinderRespondToOfferRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToOfferRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToOfferRequestToJson(this);

	static Future<DestinyFireteamFinderRespondToOfferRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToOfferRequest>((json)=>DestinyFireteamFinderRespondToOfferRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}