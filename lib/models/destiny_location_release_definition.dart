import 'destiny_display_properties_definition.dart';
class DestinyLocationReleaseDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String smallTransparentIcon;
	String mapIcon;
	String largeTransparentIcon;
	int spawnPoint;
	int destinationHash;
	int activityHash;
	int activityGraphHash;
	int activityGraphNodeHash;
	int activityBubbleName;
	int activityPathBundle;
	int activityPathDestination;
	int navPointType;
	List<int> worldPosition;
	DestinyLocationReleaseDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.smallTransparentIcon,
		String this.mapIcon,
		String this.largeTransparentIcon,
		int this.spawnPoint,
		int this.destinationHash,
		int this.activityHash,
		int this.activityGraphHash,
		int this.activityGraphNodeHash,
		int this.activityBubbleName,
		int this.activityPathBundle,
		int this.activityPathDestination,
		int this.navPointType,
		List<int> this.worldPosition,
	);

	static DestinyLocationReleaseDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLocationReleaseDefinition(
				data['displayProperties'],
				data['smallTransparentIcon'],
				data['mapIcon'],
				data['largeTransparentIcon'],
				data['spawnPoint'],
				data['destinationHash'],
				data['activityHash'],
				data['activityGraphHash'],
				data['activityGraphNodeHash'],
				data['activityBubbleName'],
				data['activityPathBundle'],
				data['activityPathDestination'],
				data['navPointType'],
				data['worldPosition'],
		);
	}

	static List<DestinyLocationReleaseDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLocationReleaseDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLocationReleaseDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['smallTransparentIcon'] = this.smallTransparentIcon;
			data['mapIcon'] = this.mapIcon;
			data['largeTransparentIcon'] = this.largeTransparentIcon;
			data['spawnPoint'] = this.spawnPoint;
			data['destinationHash'] = this.destinationHash;
			data['activityHash'] = this.activityHash;
			data['activityGraphHash'] = this.activityGraphHash;
			data['activityGraphNodeHash'] = this.activityGraphNodeHash;
			data['activityBubbleName'] = this.activityBubbleName;
			data['activityPathBundle'] = this.activityPathBundle;
			data['activityPathDestination'] = this.activityPathDestination;
			data['navPointType'] = this.navPointType;
			data['worldPosition'] = this.worldPosition;
		return data;
	}
}