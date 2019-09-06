
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_gearset_block_definition.g.dart';

/// If an item has a related gearset, this is the list of items in that set, and an unlock expression that evaluates to a number representing the progress toward gearset completion (a very rare use for unlock expressions!)
@JsonSerializable()
class DestinyItemGearsetBlockDefinition {

	/// The maximum possible number of items that can be collected.
	@JsonKey(name:'trackingValueMax')
	int trackingValueMax;

	/// The list of hashes for items in the gearset. Use them to look up DestinyInventoryItemDefinition entries for the items in the set.
	@JsonKey(name:'itemList')
	List<int> itemList;
	DestinyItemGearsetBlockDefinition();

	factory DestinyItemGearsetBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemGearsetBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemGearsetBlockDefinitionToJson(this);
}
