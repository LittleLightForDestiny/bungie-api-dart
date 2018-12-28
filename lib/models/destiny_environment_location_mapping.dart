
/**  */
class DestinyEnvironmentLocationMapping{
	
	/** The location that is revealed on the director by this mapping. */
	int locationHash;
	
	/** A hint that the UI uses to figure out how this location is activated by the player. */
	String activationSource;
	
	/** If this is populated, it is the item that you must possess for this location to be active because of this mapping. (theoretically, a location can have multiple mappings, and some might require an item while others don't) */
	int itemHash;
	
	/** If this is populated, this is an objective related to the location. */
	int objectiveHash;
	
	/** If this is populated, this is the activity you have to be playing in order to see this location appear because of this mapping. (theoretically, a location can have multiple mappings, and some might require you to be in a specific activity when others don't) */
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