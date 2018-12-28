import 'destiny_display_properties_definition.dart';
import 'destiny_activity_graph_list_entry_definition.dart';
import 'destiny_destination_bubble_setting_definition.dart';
import 'destiny_bubble_definition.dart';

/* On to one of the more confusing subjects of the API. What is a Destination, and what is the relationship between it, Activities, Locations, and Places?
A "Destination" is a specific region/city/area of a larger "Place". For instance, a Place might be Earth where a Destination might be Bellevue, Washington. (Please, pick a more interesting destination if you come to visit Earth). */
class DestinyDestinationDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* The place that "owns" this Destination. Use this hash to look up the DestinyPlaceDefinition. */
	int placeHash;
	
	/* If this Destination has a default Free-Roam activity, this is the hash for that Activity. Use it to look up the DestinyActivityDefintion. */
	int defaultFreeroamActivityHash;
	
	/* If the Destination has default Activity Graphs (i.e. "Map") that should be shown in the director, this is the list of those Graphs. At most, only one should be active at any given time for a Destination: these would represent, for example, different variants on a Map if the Destination is changing on a macro level based on game state. */
	List<DestinyActivityGraphListEntryDefinition> activityGraphEntries;
	
	/* A Destination may have many "Bubbles" zones with human readable properties.
We don't get as much info as I'd like about them - I'd love to return info like where on the map they are located - but at least this gives you the name of those bubbles. bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data.
DEPRECATED - Just use bubbles, it now has this data. */
	List<DestinyDestinationBubbleSettingDefinition> bubbleSettings;
	
	/* This provides the unique identifiers for every bubble in the destination (only guaranteed unique within the destination), and any intrinsic properties of the bubble.
bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data. */
	List<DestinyBubbleDefinition> bubbles;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyDestinationDefinition(
		this.displayProperties,
		this.placeHash,
		this.defaultFreeroamActivityHash,
		this.activityGraphEntries,
		this.bubbleSettings,
		this.bubbles,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyDestinationDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDestinationDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['placeHash'],
				data['defaultFreeroamActivityHash'],
				data['activityGraphEntries'] != null ? DestinyActivityGraphListEntryDefinition.fromList(data['activityGraphEntries']) : null,
				data['bubbleSettings'] != null ? DestinyDestinationBubbleSettingDefinition.fromList(data['bubbleSettings']) : null,
				data['bubbles'] != null ? DestinyBubbleDefinition.fromList(data['bubbles']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDestinationDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDestinationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDestinationDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['placeHash'] = this.placeHash;
			data['defaultFreeroamActivityHash'] = this.defaultFreeroamActivityHash;
			data['activityGraphEntries'] = this.activityGraphEntries.map((item)=>item.toMap()).toList();
			data['bubbleSettings'] = this.bubbleSettings.map((item)=>item.toMap()).toList();
			data['bubbles'] = this.bubbles.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}