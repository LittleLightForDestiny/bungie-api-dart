import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_crafting_block_bonus_plug_definition.g.dart';

@JsonSerializable()
class DestinyItemCraftingBlockBonusPlugDefinition{	
	DestinyItemCraftingBlockBonusPlugDefinition();

	
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
	
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;

	factory DestinyItemCraftingBlockBonusPlugDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemCraftingBlockBonusPlugDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemCraftingBlockBonusPlugDefinitionToJson(this);

	static Future<DestinyItemCraftingBlockBonusPlugDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemCraftingBlockBonusPlugDefinition>((json)=>DestinyItemCraftingBlockBonusPlugDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}