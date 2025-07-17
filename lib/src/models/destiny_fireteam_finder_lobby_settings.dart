import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_lobby_privacy_scope.dart';
import 'destiny_fireteam_finder_listing_value.dart';

part 'destiny_fireteam_finder_lobby_settings.g.dart';

@JsonSerializable()
class DestinyFireteamFinderLobbySettings{	
	DestinyFireteamFinderLobbySettings();

	
	@JsonKey(name:'maxPlayerCount')
	int? maxPlayerCount;
	
	@JsonKey(name:'onlinePlayersOnly')
	bool? onlinePlayersOnly;
	
	@JsonKey(name:'privacyScope',fromJson:decodeDestinyFireteamFinderLobbyPrivacyScope,toJson:encodeDestinyFireteamFinderLobbyPrivacyScope)
	DestinyFireteamFinderLobbyPrivacyScope? privacyScope;
	
	@JsonKey(name:'scheduledDateTime')
	String? scheduledDateTime;
	
	@JsonKey(name:'clanId')
	String? clanId;
	
	@JsonKey(name:'listingValues')
	List<DestinyFireteamFinderListingValue>? listingValues;
	
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;
	
	@JsonKey(name:'activityHash')
	int? activityHash;

	factory DestinyFireteamFinderLobbySettings.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderLobbySettingsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderLobbySettingsToJson(this);

	static Future<DestinyFireteamFinderLobbySettings> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderLobbySettings>((json)=>DestinyFireteamFinderLobbySettings.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}