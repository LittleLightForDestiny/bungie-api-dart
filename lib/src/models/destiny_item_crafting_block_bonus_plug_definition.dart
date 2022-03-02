import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_crafting_block_bonus_plug_definition.g.dart';

@JsonSerializable()
class DestinyItemCraftingBlockBonusPlugDefinition{	
	DestinyItemCraftingBlockBonusPlugDefinition();

	factory DestinyItemCraftingBlockBonusPlugDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemCraftingBlockBonusPlugDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemCraftingBlockBonusPlugDefinitionToJson(this);
	
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
	
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;
}