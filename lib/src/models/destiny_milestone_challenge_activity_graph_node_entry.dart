import 'package:json_annotation/json_annotation.dart';


part 'destiny_milestone_challenge_activity_graph_node_entry.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityGraphNodeEntry{
	
	DestinyMilestoneChallengeActivityGraphNodeEntry();

	factory DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyMilestoneChallengeActivityGraphNodeEntryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'activityGraphHash')
	int activityGraphHash;
	@JsonKey(name:'activityGraphNodeHash')
	int activityGraphNodeHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityGraphNodeEntryToJson(this);
}