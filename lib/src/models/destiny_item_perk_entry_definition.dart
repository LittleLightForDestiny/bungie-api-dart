
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_perk_entry_definition.g.dart';

/// An intrinsic perk on an item, and the requirements for it to be activated.
@JsonSerializable()
class DestinyItemPerkEntryDefinition {

	/// If this perk is not active, this is the string to show for why it&#39;s not providing its benefits.
	@JsonKey(name:'requirementDisplayString')
	String requirementDisplayString;

	/// A hash identifier for the DestinySandboxPerkDefinition being provided on the item.
	@JsonKey(name:'perkHash')
	int perkHash;

	/// Indicates whether this perk should be shown, or if it should be shown disabled.
	@JsonKey(name:'perkVisibility')
	int perkVisibility;
	DestinyItemPerkEntryDefinition();

	factory DestinyItemPerkEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemPerkEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemPerkEntryDefinitionToJson(this);
}
