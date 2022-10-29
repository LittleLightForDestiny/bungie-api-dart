import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_crafting_block_bonus_plug_definition.dart';

part 'destiny_item_crafting_block_definition.g.dart';

/// If an item can have an action performed on it (like &quot;Dismantle&quot;), it will be defined here if you care.
@JsonSerializable()
class DestinyItemCraftingBlockDefinition{	
	DestinyItemCraftingBlockDefinition();

	
	/// A reference to the item definition that is created when crafting with this 'recipe' item.
	@JsonKey(name:'outputItemHash')
	int? outputItemHash;
	
	/// A list of socket type hashes that describes which sockets are required for crafting with this recipe.
	@JsonKey(name:'requiredSocketTypeHashes')
	List<int>? requiredSocketTypeHashes;
	
	@JsonKey(name:'failedRequirementStrings')
	List<String>? failedRequirementStrings;
	
	/// A reference to the base material requirements for crafting with this recipe.
	@JsonKey(name:'baseMaterialRequirements')
	int? baseMaterialRequirements;
	
	/// A list of 'bonus' socket plugs that may be available if certain requirements are met.
	@JsonKey(name:'bonusPlugs')
	List<DestinyItemCraftingBlockBonusPlugDefinition>? bonusPlugs;

	factory DestinyItemCraftingBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemCraftingBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemCraftingBlockDefinitionToJson(this);

	static Future<DestinyItemCraftingBlockDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemCraftingBlockDefinition>((json)=>DestinyItemCraftingBlockDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}