import 'destiny_milestone_challenge_definition.dart';
import 'destiny_milestone_challenge_activity_graph_node_entry.dart';
import 'destiny_milestone_challenge_activity_phase.dart';

/**  */
class DestinyMilestoneChallengeActivityDefinition{
	
	/** The activity for which this challenge is active. */
	int activityHash;
	
	/**  */
	List<DestinyMilestoneChallengeDefinition> challenges;
	
	/** If the activity and its challenge is visible on any of these nodes, it will be returned. */
	List<DestinyMilestoneChallengeActivityGraphNodeEntry> activityGraphNodes;
	
	/** Phases related to this activity, if there are any.
These will be listed in the order in which they will appear in the actual activity. */
	List<DestinyMilestoneChallengeActivityPhase> phases;
	DestinyMilestoneChallengeActivityDefinition(
		this.activityHash,
		this.challenges,
		this.activityGraphNodes,
		this.phases,
	);

	static DestinyMilestoneChallengeActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivityDefinition(
				data['activityHash'],
				data['challenges'] != null ? DestinyMilestoneChallengeDefinition.fromList(data['challenges']) : null,
				data['activityGraphNodes'] != null ? DestinyMilestoneChallengeActivityGraphNodeEntry.fromList(data['activityGraphNodes']) : null,
				data['phases'] != null ? DestinyMilestoneChallengeActivityPhase.fromList(data['phases']) : null,
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
			data['challenges'] = this.challenges.map((item)=>item.toMap()).toList();
			data['activityGraphNodes'] = this.activityGraphNodes.map((item)=>item.toMap()).toList();
			data['phases'] = this.phases.map((item)=>item.toMap()).toList();
		return data;
	}
}