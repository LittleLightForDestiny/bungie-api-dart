import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_activity_graph_state.dart';

part 'destiny_fireteam_finder_get_character_activity_access_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetCharacterActivityAccessResponse{	
	DestinyFireteamFinderGetCharacterActivityAccessResponse();

	
	/// A map of fireteam finder activity graph hashes to visibility and availability states.
	@JsonKey(name:'fireteamFinderActivityGraphStates')
	Map<String, DestinyFireteamFinderActivityGraphState>? fireteamFinderActivityGraphStates;

	factory DestinyFireteamFinderGetCharacterActivityAccessResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetCharacterActivityAccessResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetCharacterActivityAccessResponseToJson(this);

	static Future<DestinyFireteamFinderGetCharacterActivityAccessResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetCharacterActivityAccessResponse>((json)=>DestinyFireteamFinderGetCharacterActivityAccessResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}