import 'destiny_milestone_challenge_definition.dart';
import 'destiny_milestone_challenge_activity_graph_node_entry.dart';
class DestinyMilestoneChallengeActivityDefinition{
	int activityHash;
	List<DestinyMilestoneChallengeDefinition> challenges;
	List<DestinyMilestoneChallengeActivityGraphNodeEntry> activityGraphNodes;
	DestinyMilestoneChallengeActivityDefinition(
		int this.activityHash,
		List<DestinyMilestoneChallengeDefinition> this.challenges,
		List<DestinyMilestoneChallengeActivityGraphNodeEntry> this.activityGraphNodes,
	);

	static DestinyMilestoneChallengeActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivityDefinition(
				data['activityHash'],
				DestinyMilestoneChallengeDefinition.fromList(data['challenges']),
				DestinyMilestoneChallengeActivityGraphNodeEntry.fromList(data['activityGraphNodes']),
		);
	}

	static List<DestinyMilestoneChallengeActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneChallengeActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['challenges'] = this.challenges.map((item)=>item.toMap());
			data['activityGraphNodes'] = this.activityGraphNodes.map((item)=>item.toMap());
		return data;
	}
}