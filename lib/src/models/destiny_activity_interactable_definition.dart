import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_interactable_entry_definition.dart';

part 'destiny_activity_interactable_definition.g.dart';

/// There are times in every Activity&#39;s life when interacting with an object in the world will result in another Activity activating. Well, not every Activity. Just certain ones.
/// Anyways, this defines a set of interactable components, the activities that they spawn when you interact with them, and the conditions under which they can be interacted with.
/// Sadly, we don&#39;t get any *really* good data for them, like positional data... yet. I have hopes for future data that we could put on this.
@JsonSerializable()
class DestinyActivityInteractableDefinition{	
	DestinyActivityInteractableDefinition();

	
	/// The possible interactables in this activity interactable definition.
	@JsonKey(name:'entries')
	List<DestinyActivityInteractableEntryDefinition>? entries;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyActivityInteractableDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityInteractableDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityInteractableDefinitionToJson(this);

	static Future<DestinyActivityInteractableDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityInteractableDefinition>((json)=>DestinyActivityInteractableDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}