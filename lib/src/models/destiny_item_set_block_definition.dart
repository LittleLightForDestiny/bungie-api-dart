import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_set_block_entry_definition.dart';

part 'destiny_item_set_block_definition.g.dart';

/// Primarily for Quests, this is the definition of properties related to the item if it is a quest and its various quest steps.
@JsonSerializable()
class DestinyItemSetBlockDefinition{	
	DestinyItemSetBlockDefinition();

	factory DestinyItemSetBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSetBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSetBlockDefinitionToJson(this);
	
	/// A collection of hashes of set items, for items such as Quest Metadata items that possess this data.
	@JsonKey(name:'itemList')
	List<DestinyItemSetBlockEntryDefinition>? itemList;
	
	/// If true, items in the set can only be added in increasing order, and adding an item will remove any previous item. For Quests, this is by necessity true. Only one quest step is present at a time, and previous steps are removed as you advance in the quest.
	@JsonKey(name:'requireOrderedSetItemAdd')
	bool? requireOrderedSetItemAdd;
	
	/// If true, the UI should treat this quest as "featured"
	@JsonKey(name:'setIsFeatured')
	bool? setIsFeatured;
	
	/// A string identifier we can use to attempt to identify the category of the Quest.
	@JsonKey(name:'setType')
	String? setType;
	
	/// The name of the quest line that this quest step is a part of.
	@JsonKey(name:'questLineName')
	String? questLineName;
	
	/// The description of the quest line that this quest step is a part of.
	@JsonKey(name:'questLineDescription')
	String? questLineDescription;
	
	/// An additional summary of this step in the quest line.
	@JsonKey(name:'questStepSummary')
	String? questStepSummary;
}