class DestinyEnvironmentLocationMapping{
	int locationHash;
	String activationSource;
	int itemHash;
	int objectiveHash;
	int activityHash;
	DestinyEnvironmentLocationMapping(
		int this.locationHash,
		String this.activationSource,
		int this.itemHash,
		int this.objectiveHash,
		int this.activityHash,
	);

	static DestinyEnvironmentLocationMapping fromJson(Map<String, dynamic> data){
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
      list.add(DestinyEnvironmentLocationMapping.fromJson(item));
    });
    return list;
	}
}