
/** Represents a variant of an activity that's relevant to a milestone. */
class DestinyPublicMilestoneActivityVariant{
	
	/** The hash identifier of this activity variant. Examine the activity's definition in the Manifest database to determine what makes it a distinct variant. Usually it will be difficulty level or whether or not it is a guided game variant of the activity, but theoretically it could be distinguished in any arbitrary way. */
	int activityHash;
	
	/** The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
	int activityModeHash;
	
	/** The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
	int activityModeType;
	DestinyPublicMilestoneActivityVariant(
		this.activityHash,
		this.activityModeHash,
		this.activityModeType,
	);

	static DestinyPublicMilestoneActivityVariant fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneActivityVariant(
				data['activityHash'],
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyPublicMilestoneActivityVariant> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneActivityVariant> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneActivityVariant.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}