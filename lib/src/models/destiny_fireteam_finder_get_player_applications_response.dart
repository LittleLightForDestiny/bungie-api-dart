import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_application.dart';

part 'destiny_fireteam_finder_get_player_applications_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetPlayerApplicationsResponse{	
	DestinyFireteamFinderGetPlayerApplicationsResponse();

	
	/// All applications that this player has sent.
	@JsonKey(name:'applications')
	List<DestinyFireteamFinderApplication>? applications;
	
	/// String token to request next page of results.
	@JsonKey(name:'nextPageToken')
	String? nextPageToken;

	factory DestinyFireteamFinderGetPlayerApplicationsResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetPlayerApplicationsResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetPlayerApplicationsResponseToJson(this);

	static Future<DestinyFireteamFinderGetPlayerApplicationsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetPlayerApplicationsResponse>((json)=>DestinyFireteamFinderGetPlayerApplicationsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}