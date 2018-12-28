
/* Summary information about the activity that was played. */
class DestinyHistoricalStatsActivity{
	
	/* The unique hash identifier of the DestinyActivityDefinition that was played. If I had this to do over, it'd be named activityHash. Too late now. */
	int referenceId;
	
	/* The unique hash identifier of the DestinyActivityDefinition that was played. */
	int directorActivityHash;
	
	/* The unique identifier for this *specific* match that was played.
This value can be used to get additional data about this activity such as who else was playing via the GetPostGameCarnageReport endpoint. */
	String instanceId;
	
	/* Indicates the most specific game mode of the activity that we could find. */
	int mode;
	
	/* The list of all Activity Modes to which this activity applies, including aggregates. This will let you see, for example, whether the activity was both Clash and part of the Trials of the Nine event. */
	List<int> modes;
	
	/* Whether or not the match was a private match. There's no private matches in Destiny 2... yet... DUN DUN DUNNNN */
	bool isPrivate;
	DestinyHistoricalStatsActivity(
		this.referenceId,
		this.directorActivityHash,
		this.instanceId,
		this.mode,
		this.modes,
		this.isPrivate,
	);

	static DestinyHistoricalStatsActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsActivity(
				data['referenceId'],
				data['directorActivityHash'],
				data['instanceId'],
				data['mode'],
				data['modes'] != null ? data['modes']?.cast<int>() ?? null : null,
				data['isPrivate'],
		);
	}

	static List<DestinyHistoricalStatsActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['referenceId'] = this.referenceId;
			data['directorActivityHash'] = this.directorActivityHash;
			data['instanceId'] = this.instanceId;
			data['mode'] = this.mode;
			data['modes'] = this.modes;
			data['isPrivate'] = this.isPrivate;
		return data;
	}
}