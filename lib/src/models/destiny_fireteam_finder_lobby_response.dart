import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_lobby_state.dart';
import 'destiny_fireteam_finder_player_id.dart';
import 'destiny_fireteam_finder_lobby_settings.dart';
import 'destiny_fireteam_finder_lobby_player.dart';

part 'destiny_fireteam_finder_lobby_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderLobbyResponse{	
	DestinyFireteamFinderLobbyResponse();

	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'revision')
	int? revision;
	
	@JsonKey(name:'state',fromJson:decodeDestinyFireteamFinderLobbyState,toJson:encodeDestinyFireteamFinderLobbyState)
	DestinyFireteamFinderLobbyState? state;
	
	@JsonKey(name:'owner')
	DestinyFireteamFinderPlayerId? owner;
	
	@JsonKey(name:'settings')
	DestinyFireteamFinderLobbySettings? settings;
	
	@JsonKey(name:'players')
	List<DestinyFireteamFinderLobbyPlayer>? players;
	
	@JsonKey(name:'listingId')
	String? listingId;
	
	@JsonKey(name:'createdDateTime')
	String? createdDateTime;

	factory DestinyFireteamFinderLobbyResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderLobbyResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderLobbyResponseToJson(this);

	static Future<DestinyFireteamFinderLobbyResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderLobbyResponse>((json)=>DestinyFireteamFinderLobbyResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}