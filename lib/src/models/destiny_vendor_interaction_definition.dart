import 'destiny_vendor_interaction_reply_definition.dart';
import 'destiny_vendor_interaction_sack_entry_definition.dart';
import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_interaction_definition.g.dart';

/// A Vendor Interaction is a dialog shown by the vendor other than sale items or transfer screens. The vendor is showing you something, and asking you to reply to it by choosing an option or reward.
@JsonSerializable()
class DestinyVendorInteractionDefinition {

	/// The position of this interaction in its parent array. Note that this is NOT content agnostic, and should not be used as such.
	@JsonKey(name:'interactionIndex')
	int interactionIndex;

	/// The potential replies that the user can make to the interaction.
	@JsonKey(name:'replies')
	List<DestinyVendorInteractionReplyDefinition> replies;

	/// If &gt;&#x3D; 0, this is the category of sale items to show along with this interaction dialog.
	@JsonKey(name:'vendorCategoryIndex')
	int vendorCategoryIndex;

	/// If this interaction dialog is about a quest, this is the questline related to the interaction. You can use this to show the quest overview, or even the character&#39;s status with the quest if you use it to find the character&#39;s current Quest Step by checking their inventory against this questlineItemHash&#39;s DestinyInventoryItemDefinition.setData.
	@JsonKey(name:'questlineItemHash')
	int questlineItemHash;

	/// If this interaction is meant to show you sacks, this is the list of types of sacks to be shown. If empty, the interaction is not meant to show sacks.
	@JsonKey(name:'sackInteractionList')
	List<DestinyVendorInteractionSackEntryDefinition> sackInteractionList;

	/// A UI hint for the behavior of the interaction screen. This is useful to determine what type of interaction is occurring, such as a prompt to receive a rank up reward or a prompt to choose a reward for completing a quest. The hash isn&#39;t as useful as the Enum in retrospect, well what can you do. Try using interactionType instead.
	@JsonKey(name:'uiInteractionType')
	int uiInteractionType;

	/// The enumerated version of the possible UI hints for vendor interactions, which is a little easier to grok than the hash found in uiInteractionType.
	@JsonKey(name:'interactionType')
	int interactionType;

	/// If this interaction is displaying rewards, this is the text to use for the header of the reward-displaying section of the interaction.
	@JsonKey(name:'rewardBlockLabel')
	String rewardBlockLabel;

	/// If the vendor&#39;s reward list is sourced from one of his categories, this is the index into the category array of items to show.
	@JsonKey(name:'rewardVendorCategoryIndex')
	int rewardVendorCategoryIndex;

	/// If the vendor interaction has flavor text, this is some of it.
	@JsonKey(name:'flavorLineOne')
	String flavorLineOne;

	/// If the vendor interaction has flavor text, this is the rest of it.
	@JsonKey(name:'flavorLineTwo')
	String flavorLineTwo;

	/// The header for the interaction dialog.
	@JsonKey(name:'headerDisplayProperties')
	DestinyDisplayPropertiesDefinition headerDisplayProperties;

	/// The localized text telling the player what to do when they see this dialog.
	@JsonKey(name:'instructions')
	String instructions;
	DestinyVendorInteractionDefinition();

	factory DestinyVendorInteractionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorInteractionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorInteractionDefinitionToJson(this);
}
