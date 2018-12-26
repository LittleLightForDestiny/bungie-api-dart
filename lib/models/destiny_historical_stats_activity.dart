class DestinyHistoricalStatsActivity{
	int referenceId;
	int directorActivityHash;
	String instanceId;
	int mode;
	List<int> modes;
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