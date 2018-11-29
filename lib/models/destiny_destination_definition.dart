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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.placeHash,
		int this.defaultFreeroamActivityHash,
		List<DestinyActivityGraphListEntryDefinition> this.activityGraphEntries,
		List<DestinyDestinationBubbleSettingDefinition> this.bubbleSettings,
		List<DestinyBubbleDefinition> this.bubbles,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyDestinationDefinition fromJson(Map<String, dynamic> data){
		return new DestinyDestinationDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['placeHash'],
				data['defaultFreeroamActivityHash'],
				DestinyActivityGraphListEntryDefinition.fromList(data['activityGraphEntries']),
				DestinyDestinationBubbleSettingDefinition.fromList(data['bubbleSettings']),
				DestinyBubbleDefinition.fromList(data['bubbles']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDestinationDefinition> fromList(List<dynamic> data){
		List<DestinyDestinationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDestinationDefinition.fromJson(item));
    });
    return list;
	}
}