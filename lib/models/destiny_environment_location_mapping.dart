class DestinyEnvironmentLocationMapping{
	int locationHash;
	String activationSource;
	int itemHash;
	int objectiveHash;
	int activityHash;
	DestinyEnvironmentLocationMapping(
		this.locationHash,
		this.activationSource,
		this.itemHash,
		this.objectiveHash,
		this.activityHash,
	);

	static DestinyEnvironmentLocationMapping fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEnvironmentLocationMapping(
				data['locationHash'],
				data['activationSource'],
				data['itemHash'],
				data['objectiveHash'],
				data['activityHash'],
		);
	}

	static List<DestinyEnvironmentLocationMapping> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEnvironmentLocationMapping> list = new List();
    data.forEach((item) {
      list.add(DestinyEnvironmentLocationMapping.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['locationHash'] = this.locationHash;
			data['activationSource'] = this.activationSource;
			data['itemHash'] = this.itemHash;
			data['objectiveHash'] = this.objectiveHash;
			data['activityHash'] = this.activityHash;
		return data;
	}
}