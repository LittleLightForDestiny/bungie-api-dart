import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_host_lobby_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderHostLobbyResponse{	
	DestinyFireteamFinderHostLobbyResponse();

	
	@JsonKey(name:'lobbyId')
	String? lobbyId;
	
	@JsonKey(name:'listingId')
	String? listingId;
	
	@JsonKey(name:'applicationId')
	String? applicationId;
	
	@JsonKey(name:'offerId')
	String? offerId;

	factory DestinyFireteamFinderHostLobbyResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderHostLobbyResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderHostLobbyResponseToJson(this);

	static Future<DestinyFireteamFinderHostLobbyResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderHostLobbyResponse>((json)=>DestinyFireteamFinderHostLobbyResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}