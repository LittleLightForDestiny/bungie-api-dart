import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_join_lobby_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderJoinLobbyRequest{	
	DestinyFireteamFinderJoinLobbyRequest();

	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'offerId')
	String? offerId;

	factory DestinyFireteamFinderJoinLobbyRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderJoinLobbyRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderJoinLobbyRequestToJson(this);

	static Future<DestinyFireteamFinderJoinLobbyRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderJoinLobbyRequest>((json)=>DestinyFireteamFinderJoinLobbyRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}