import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_checklist_entry_definition.g.dart';

/// The properties of an individual checklist item. Note that almost everything is optional: it is *highly* variable what kind of data we&#39;ll actually be able to return: at times we may have no other relationships to entities at all.
/// Whatever UI you build, do it with the knowledge that any given entry might not actually be able to be associated with some other Destiny entity.
@JsonSerializable()
class DestinyChecklistEntryDefinition {

	/// The identifier for this Checklist entry. Guaranteed unique only within this Checklist Definition, and not globally&#x2F;for all checklists.
	@JsonKey(name:'hash')
	int hash;

	/// Even if no other associations exist, we will give you *something* for display properties. In cases where we have no associated entities, it may be as simple as a numerical identifier.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	@JsonKey(name:'destinationHash')
	int destinationHash;

	@JsonKey(name:'locationHash')
	int locationHash;

	/// Note that a Bubble&#39;s hash doesn&#39;t uniquely identify a &quot;top level&quot; entity in Destiny. Only the combination of location and bubble can uniquely identify a place in the world of Destiny: so if bubbleHash is populated, locationHash must too be populated for it to have any meaning.
	/// You can use this property if it is populated to look up the DestinyLocationDefinition&#39;s associated .locationReleases[].activityBubbleName property.
	@JsonKey(name:'bubbleHash')
	int bubbleHash;

	@JsonKey(name:'activityHash')
	int activityHash;

	@JsonKey(name:'itemHash')
	int itemHash;

	@JsonKey(name:'vendorHash')
	int vendorHash;

	@JsonKey(name:'vendorInteractionIndex')
	int vendorInteractionIndex;

	/// The scope at which this specific entry can be computed.
	@JsonKey(name:'scope')
	int scope;
	DestinyChecklistEntryDefinition();

	factory DestinyChecklistEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyChecklistEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyChecklistEntryDefinitionToJson(this);
}
