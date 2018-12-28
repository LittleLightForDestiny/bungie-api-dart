import 'destiny_display_properties_definition.dart';

/** A specific "spot" referred to by a location. Only one of these can be active at a time for a given Location. */
class DestinyLocationReleaseDefinition{
	
	/** Sadly, these don't appear to be populated anymore (ever?) */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/**  */
	String smallTransparentIcon;
	
	/**  */
	String mapIcon;
	
	/**  */
	String largeTransparentIcon;
	
	/** If we had map information, this spawnPoint would be interesting. But sadly, we don't have that info. */
	int spawnPoint;
	
	/** The Destination being pointed to by this location. */
	int destinationHash;
	
	/** The Activity being pointed to by this location. */
	int activityHash;
	
	/** The Activity Graph being pointed to by this location. */
	int activityGraphHash;
	
	/** The Activity Graph Node being pointed to by this location. (Remember that Activity Graph Node hashes are only unique within an Activity Graph: so use the combination to find the node being spoken of) */
	int activityGraphNodeHash;
	
	/** The Activity Bubble within the Destination. Look this up in the DestinyDestinationDefinition's bubbles and bubbleSettings properties. */
	int activityBubbleName;
	
	/** If we had map information, this would tell us something cool about the path this location wants you to take. I wish we had map information. */
	int activityPathBundle;
	
	/** If we had map information, this would tell us about path information related to destination on the map. Sad. Maybe you can do something cool with it. Go to town man. */
	int activityPathDestination;
	
	/** The type of Nav Point that this represents. See the enumeration for more info. */
	int navPointType;
	
	/** Looks like it should be the position on the map, but sadly it does not look populated... yet? */
	List<int> worldPosition;
	DestinyLocationReleaseDefinition(
		this.displayProperties,
		this.smallTransparentIcon,
		this.mapIcon,
		this.largeTransparentIcon,
		this.spawnPoint,
		this.destinationHash,
		this.activityHash,
		this.activityGraphHash,
		this.activityGraphNodeHash,
		this.activityBubbleName,
		this.activityPathBundle,
		this.activityPathDestination,
		this.navPointType,
		this.worldPosition,
	);

	static DestinyLocationReleaseDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLocationReleaseDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
				data['worldPosition'] != null ? data['worldPosition']?.cast<int>() ?? null : null,
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