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
			data['displayProperties'] = displayProperties;
			data['smallTransparentIcon'] = smallTransparentIcon;
			data['mapIcon'] = mapIcon;
			data['largeTransparentIcon'] = largeTransparentIcon;
			data['spawnPoint'] = spawnPoint;
			data['destinationHash'] = destinationHash;
			data['activityHash'] = activityHash;
			data['activityGraphHash'] = activityGraphHash;
			data['activityGraphNodeHash'] = activityGraphNodeHash;
			data['activityBubbleName'] = activityBubbleName;
			data['activityPathBundle'] = activityPathBundle;
			data['activityPathDestination'] = activityPathDestination;
			data['navPointType'] = navPointType;
			data['worldPosition'] = worldPosition;
	}
}