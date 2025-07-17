import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_lobby_listing_reference.g.dart';

@JsonSerializable()
class DestinyFireteamFinderLobbyListingReference{	
	DestinyFireteamFinderLobbyListingReference();

	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'listingId')
	String? listingId;

	factory DestinyFireteamFinderLobbyListingReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderLobbyListingReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderLobbyListingReferenceToJson(this);

	static Future<DestinyFireteamFinderLobbyListingReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderLobbyListingReference>((json)=>DestinyFireteamFinderLobbyListingReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}