class DestinyHistoricalStatsActivity{
	int referenceId;
	int directorActivityHash;
	int instanceId;
	int mode;
	List<int> modes;
	bool isPrivate;
	DestinyHistoricalStatsActivity(
		int this.referenceId,
		int this.directorActivityHash,
		int this.instanceId,
		int this.mode,
		List<int> this.modes,
		bool this.isPrivate,
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
				data['modes'],
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
			data['referenceId'] = referenceId;
			data['directorActivityHash'] = directorActivityHash;
			data['instanceId'] = instanceId;
			data['mode'] = mode;
			data['modes'] = modes;
			data['isPrivate'] = isPrivate;
	}
}