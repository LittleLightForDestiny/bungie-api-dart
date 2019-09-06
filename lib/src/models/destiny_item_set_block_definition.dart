import 'destiny_item_set_block_entry_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_set_block_definition.g.dart';

/// Primarily for Quests, this is the definition of properties related to the item if it is a quest and its various quest steps.
@JsonSerializable()
class DestinyItemSetBlockDefinition {

	/// A collection of hashes of set items, for items such as Quest Metadata items that possess this data.
	@JsonKey(name:'itemList')
	List<DestinyItemSetBlockEntryDefinition> itemList;

	/// If true, items in the set can only be added in increasing order, and adding an item will remove any previous item. For Quests, this is by necessity true. Only one quest step is present at a time, and previous steps are removed as you advance in the quest.
	@JsonKey(name:'requireOrderedSetItemAdd')
	bool requireOrderedSetItemAdd;

	/// If true, the UI should treat this quest as &quot;featured&quot;
	@JsonKey(name:'setIsFeatured')
	bool setIsFeatured;

	/// A string identifier we can use to attempt to identify the category of the Quest.
	@JsonKey(name:'setType')
	String setType;
	DestinyItemSetBlockDefinition();

	factory DestinyItemSetBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSetBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSetBlockDefinitionToJson(this);
}
