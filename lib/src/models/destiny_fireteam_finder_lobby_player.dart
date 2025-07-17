import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_player_id.dart';
import '../enums/destiny_fireteam_finder_player_readiness_state.dart';

part 'destiny_fireteam_finder_lobby_player.g.dart';

@JsonSerializable()
class DestinyFireteamFinderLobbyPlayer{	
	DestinyFireteamFinderLobbyPlayer();

	
	@JsonKey(name:'playerId')
	DestinyFireteamFinderPlayerId? playerId;
	
	@JsonKey(name:'referralToken')
	String? referralToken;
	
	@JsonKey(name:'state',fromJson:decodeDestinyFireteamFinderPlayerReadinessState,toJson:encodeDestinyFireteamFinderPlayerReadinessState)
	DestinyFireteamFinderPlayerReadinessState? state;
	
	@JsonKey(name:'offerId')
	String? offerId;

	factory DestinyFireteamFinderLobbyPlayer.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderLobbyPlayerFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderLobbyPlayerToJson(this);

	static Future<DestinyFireteamFinderLobbyPlayer> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderLobbyPlayer>((json)=>DestinyFireteamFinderLobbyPlayer.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}