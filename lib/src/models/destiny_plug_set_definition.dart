import 'destiny_display_properties_definition.dart';
import 'destiny_item_socket_entry_plug_item_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_plug_set_definition.g.dart';

/// Sometimes, we have large sets of reusable plugs that are defined identically and thus can (and in some cases, are so large that they *must*) be shared across the places where they are used. These are the definitions for those reusable sets of plugs. 
/// See DestinyItemSocketEntryDefinition.plugSource and reusablePlugSetHash for the relationship between these reusable plug sets and the sockets that leverage them (for starters, Emotes).
@JsonSerializable()
class DestinyPlugSetDefinition {

	/// If you want to show these plugs in isolation, these are the display properties for them.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// This is a list of pre-determined plugs that can be plugged into this socket, without the character having the plug in their inventory.
	/// If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs.
	@JsonKey(name:'reusablePlugItems')
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;

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
	DestinyPlugSetDefinition();

	factory DestinyPlugSetDefinition.fromJson(Map<String, dynamic> json) => _$DestinyPlugSetDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPlugSetDefinitionToJson(this);
}
