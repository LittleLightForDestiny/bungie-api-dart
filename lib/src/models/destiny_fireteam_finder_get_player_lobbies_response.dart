import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_lobby_response.dart';

part 'destiny_fireteam_finder_get_player_lobbies_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetPlayerLobbiesResponse{	
	DestinyFireteamFinderGetPlayerLobbiesResponse();

	
	/// All available lobbies that this player has created or is a member of.
	@JsonKey(name:'lobbies')
	List<DestinyFireteamFinderLobbyResponse>? lobbies;
	
	/// The number of results requested.
	@JsonKey(name:'pageSize')
	int? pageSize;
	
	/// A string token required to get the next page of results. This will be null or empty if there are no more results.
	@JsonKey(name:'nextPageToken')
	String? nextPageToken;

	factory DestinyFireteamFinderGetPlayerLobbiesResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetPlayerLobbiesResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetPlayerLobbiesResponseToJson(this);

	static Future<DestinyFireteamFinderGetPlayerLobbiesResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetPlayerLobbiesResponse>((json)=>DestinyFireteamFinderGetPlayerLobbiesResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}