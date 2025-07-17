import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_offer.dart';
import 'destiny_fireteam_finder_listing.dart';

part 'destiny_fireteam_finder_respond_to_authentication_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToAuthenticationResponse{	
	DestinyFireteamFinderRespondToAuthenticationResponse();

	
	@JsonKey(name:'applicationId')
	String? applicationId;
	
	@JsonKey(name:'applicationRevision')
	int? applicationRevision;
	
	@JsonKey(name:'offer')
	DestinyFireteamFinderOffer? offer;
	
	@JsonKey(name:'listing')
	DestinyFireteamFinderListing? listing;

	factory DestinyFireteamFinderRespondToAuthenticationResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToAuthenticationResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToAuthenticationResponseToJson(this);

	static Future<DestinyFireteamFinderRespondToAuthenticationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToAuthenticationResponse>((json)=>DestinyFireteamFinderRespondToAuthenticationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}