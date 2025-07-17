import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_activity_graph_state.g.dart';

@JsonSerializable()
class DestinyFireteamFinderActivityGraphState{	
	DestinyFireteamFinderActivityGraphState();

	
	/// Indicates if this fireteam finder activity graph node is visible for this character.
	@JsonKey(name:'isVisible')
	bool? isVisible;
	
	/// Indicates if this fireteam finder activity graph node is available to select for this character.
	@JsonKey(name:'isAvailable')
	bool? isAvailable;

	factory DestinyFireteamFinderActivityGraphState.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderActivityGraphStateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderActivityGraphStateToJson(this);

	static Future<DestinyFireteamFinderActivityGraphState> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderActivityGraphState>((json)=>DestinyFireteamFinderActivityGraphState.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}