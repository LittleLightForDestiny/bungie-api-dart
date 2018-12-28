import 'destiny_milestone_activity_phase.dart';

/** Represents this player's personal completion status for the Activity under a Milestone, if the activity has trackable completion and progress information. (most activities won't, or the concept won't apply. For instance, it makes sense to talk about a tier of a raid as being Completed or having progress, but it doesn't make sense to talk about a Crucible Playlist in those terms. */
class DestinyMilestoneActivityCompletionStatus{
	
	/** If the activity has been "completed", that information will be returned here. */
	bool completed;
	
	/** If the Activity has discrete "phases" that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity. */
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneActivityCompletionStatus(
		this.completed,
		this.phases,
	);

	static DestinyMilestoneActivityCompletionStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityCompletionStatus(
				data['completed'],
				data['phases'] != null ? DestinyMilestoneActivityPhase.fromList(data['phases']) : null,
		);
	}

	static List<DestinyMilestoneActivityCompletionStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityCompletionStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityCompletionStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['completed'] = this.completed;
			data['phases'] = this.phases.map((item)=>item.toMap()).toList();
		return data;
	}
}