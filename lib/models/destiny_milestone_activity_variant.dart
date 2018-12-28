import 'destiny_milestone_activity_completion_status.dart';

/* Represents custom data that we know about an individual variant of an activity. */
class DestinyMilestoneActivityVariant{
	
	/* The hash for the specific variant of the activity related to this milestone. You can pull more detailed static info from the DestinyActivityDefinition, such as difficulty level. */
	int activityHash;
	
	/* An OPTIONAL component: if it makes sense to talk about this activity variant in terms of whether or not it has been completed or what progress you have made in it, this will be returned. Otherwise, this will be NULL. */
	DestinyMilestoneActivityCompletionStatus completionStatus;
	
	/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
	int activityModeHash;
	
	/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
	int activityModeType;
	DestinyMilestoneActivityVariant(
		this.activityHash,
		this.completionStatus,
		this.activityModeHash,
		this.activityModeType,
	);

	static DestinyMilestoneActivityVariant fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityVariant(
				data['activityHash'],
				data['completionStatus'] != null ? DestinyMilestoneActivityCompletionStatus.fromMap(data['completionStatus']) : null,
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyMilestoneActivityVariant> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityVariant> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariant.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['completionStatus'] = this.completionStatus;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}