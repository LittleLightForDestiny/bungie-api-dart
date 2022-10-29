import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_challenge_activity_graph_node_entry.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityGraphNodeEntry{	
	DestinyMilestoneChallengeActivityGraphNodeEntry();

	
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;
	
	@JsonKey(name:'activityGraphNodeHash')
	int? activityGraphNodeHash;

	factory DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneChallengeActivityGraphNodeEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityGraphNodeEntryToJson(this);

	static Future<DestinyMilestoneChallengeActivityGraphNodeEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneChallengeActivityGraphNodeEntry>((json)=>DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}