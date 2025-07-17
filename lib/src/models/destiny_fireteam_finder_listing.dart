import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_player_id.dart';
import 'destiny_fireteam_finder_lobby_settings.dart';
import '../enums/destiny_fireteam_finder_lobby_state.dart';

part 'destiny_fireteam_finder_listing.g.dart';

@JsonSerializable()
class DestinyFireteamFinderListing{	
	DestinyFireteamFinderListing();

	
	@JsonKey(name:'listingId')
	String? listingId;
	
	@JsonKey(name:'revision')
	int? revision;
	
	@JsonKey(name:'ownerId')
	DestinyFireteamFinderPlayerId? ownerId;
	
	@JsonKey(name:'settings')
	DestinyFireteamFinderLobbySettings? settings;
	
	@JsonKey(name:'availableSlots')
	int? availableSlots;
	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'lobbyState',fromJson:decodeDestinyFireteamFinderLobbyState,toJson:encodeDestinyFireteamFinderLobbyState)
	DestinyFireteamFinderLobbyState? lobbyState;
	
	@JsonKey(name:'createdDateTime')
	String? createdDateTime;

	factory DestinyFireteamFinderListing.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderListingFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderListingToJson(this);

	static Future<DestinyFireteamFinderListing> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderListing>((json)=>DestinyFireteamFinderListing.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}