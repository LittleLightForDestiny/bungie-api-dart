import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_collectible_definition.dart';
import 'destiny_inventory_item_definition.dart';

part 'collectible_definitions.g.dart';

@JsonSerializable()
class CollectibleDefinitions{	
	CollectibleDefinitions();

	
	/// Defines a
	@JsonKey(name:'CollectibleDefinition')
	DestinyCollectibleDefinition? collectibleDefinition;
	
	/// So much of what you see in Destiny is actually an Item used in a new and creative way. This is the definition for Items in Destiny, which started off as just entities that could exist in your Inventory but ended up being the backing data for so much more: quests, reward previews, slots, and subclasses.
	/// In practice, you will want to associate this data with "live" item data from a Bungie.Net Platform call: these definitions describe the item in generic, non-instanced terms: but an actual instance of an item can vary widely from these generic definitions.
	@JsonKey(name:'DestinyInventoryItemDefinition')
	DestinyInventoryItemDefinition? destinyInventoryItemDefinition;

	factory CollectibleDefinitions.fromJson(Map<String, dynamic> json) {
		return _$CollectibleDefinitionsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CollectibleDefinitionsToJson(this);

	static Future<CollectibleDefinitions> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CollectibleDefinitions>((json)=>CollectibleDefinitions.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}