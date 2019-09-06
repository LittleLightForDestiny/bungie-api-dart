
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_challenge_activity_graph_node_entry.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityGraphNodeEntry {

	@JsonKey(name:'activityGraphHash')
	int activityGraphHash;

	@JsonKey(name:'activityGraphNodeHash')
	int activityGraphNodeHash;
	DestinyMilestoneChallengeActivityGraphNodeEntry();

	factory DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneChallengeActivityGraphNodeEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityGraphNodeEntryToJson(this);
}
