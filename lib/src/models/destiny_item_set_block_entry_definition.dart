
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_set_block_entry_definition.g.dart';

/// Defines a particular entry in an ItemSet (AKA a particular Quest Step in a Quest)
@JsonSerializable()
class DestinyItemSetBlockEntryDefinition {

	/// Used for tracking which step a user reached. These values will be populated in the user&#39;s internal state, which we expose externally as a more usable DestinyQuestStatus object. If this item has been obtained, this value will be set in trackingUnlockValueHash.
	@JsonKey(name:'trackingValue')
	int trackingValue;

	/// This is the hash identifier for a DestinyInventoryItemDefinition representing this quest step.
	@JsonKey(name:'itemHash')
	int itemHash;
	DestinyItemSetBlockEntryDefinition();

	factory DestinyItemSetBlockEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSetBlockEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSetBlockEntryDefinitionToJson(this);
}
