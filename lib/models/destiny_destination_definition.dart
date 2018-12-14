import 'destiny_display_properties_definition.dart';
import 'destiny_activity_graph_list_entry_definition.dart';
import 'destiny_destination_bubble_setting_definition.dart';
import 'destiny_bubble_definition.dart';
class DestinyDestinationDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int placeHash;
	int defaultFreeroamActivityHash;
	List<DestinyActivityGraphListEntryDefinition> activityGraphEntries;
	List<DestinyDestinationBubbleSettingDefinition> bubbleSettings;
	List<DestinyBubbleDefinition> bubbles;
	int hash;
	int index;
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