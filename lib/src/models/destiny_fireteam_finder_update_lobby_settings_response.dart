import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_lobby_response.dart';
import 'destiny_fireteam_finder_listing.dart';

part 'destiny_fireteam_finder_update_lobby_settings_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderUpdateLobbySettingsResponse{	
	DestinyFireteamFinderUpdateLobbySettingsResponse();

	
	@JsonKey(name:'updatedLobby')
	DestinyFireteamFinderLobbyResponse? updatedLobby;
	
	@JsonKey(name:'updatedListing')
	DestinyFireteamFinderListing? updatedListing;

	factory DestinyFireteamFinderUpdateLobbySettingsResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderUpdateLobbySettingsResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderUpdateLobbySettingsResponseToJson(this);

	static Future<DestinyFireteamFinderUpdateLobbySettingsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderUpdateLobbySettingsResponse>((json)=>DestinyFireteamFinderUpdateLobbySettingsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}