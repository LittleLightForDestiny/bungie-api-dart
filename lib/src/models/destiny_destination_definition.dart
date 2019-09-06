import 'destiny_display_properties_definition.dart';
import 'destiny_activity_graph_list_entry_definition.dart';
import 'destiny_destination_bubble_setting_definition.dart';
import 'destiny_bubble_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_destination_definition.g.dart';

/// On to one of the more confusing subjects of the API. What is a Destination, and what is the relationship between it, Activities, Locations, and Places?
/// A &quot;Destination&quot; is a specific region&#x2F;city&#x2F;area of a larger &quot;Place&quot;. For instance, a Place might be Earth where a Destination might be Bellevue, Washington. (Please, pick a more interesting destination if you come to visit Earth).
@JsonSerializable()
class DestinyDestinationDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The place that &quot;owns&quot; this Destination. Use this hash to look up the DestinyPlaceDefinition.
	@JsonKey(name:'placeHash')
	int placeHash;

	/// If this Destination has a default Free-Roam activity, this is the hash for that Activity. Use it to look up the DestinyActivityDefintion.
	@JsonKey(name:'defaultFreeroamActivityHash')
	int defaultFreeroamActivityHash;

	/// If the Destination has default Activity Graphs (i.e. &quot;Map&quot;) that should be shown in the director, this is the list of those Graphs. At most, only one should be active at any given time for a Destination: these would represent, for example, different variants on a Map if the Destination is changing on a macro level based on game state.
	@JsonKey(name:'activityGraphEntries')
	List<DestinyActivityGraphListEntryDefinition> activityGraphEntries;

	/// A Destination may have many &quot;Bubbles&quot; zones with human readable properties.
	/// We don&#39;t get as much info as I&#39;d like about them - I&#39;d love to return info like where on the map they are located - but at least this gives you the name of those bubbles. bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data.
	/// DEPRECATED - Just use bubbles, it now has this data.
	@JsonKey(name:'bubbleSettings')
	List<DestinyDestinationBubbleSettingDefinition> bubbleSettings;

	/// This provides the unique identifiers for every bubble in the destination (only guaranteed unique within the destination), and any intrinsic properties of the bubble.
	/// bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data.
	@JsonKey(name:'bubbles')
	List<DestinyBubbleDefinition> bubbles;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyDestinationDefinition();

	factory DestinyDestinationDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDestinationDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDestinationDefinitionToJson(this);
}
