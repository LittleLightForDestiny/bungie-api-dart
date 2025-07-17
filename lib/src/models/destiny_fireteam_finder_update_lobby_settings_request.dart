import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_lobby_settings.dart';

part 'destiny_fireteam_finder_update_lobby_settings_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderUpdateLobbySettingsRequest{	
	DestinyFireteamFinderUpdateLobbySettingsRequest();

	
	@JsonKey(name:'updatedSettings')
	DestinyFireteamFinderLobbySettings? updatedSettings;

	factory DestinyFireteamFinderUpdateLobbySettingsRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderUpdateLobbySettingsRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderUpdateLobbySettingsRequestToJson(this);

	static Future<DestinyFireteamFinderUpdateLobbySettingsRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderUpdateLobbySettingsRequest>((json)=>DestinyFireteamFinderUpdateLobbySettingsRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}