import 'destiny_vendor_interaction_reply_definition.dart';
import 'destiny_vendor_interaction_sack_entry_definition.dart';
import 'destiny_display_properties_definition.dart';

/* A Vendor Interaction is a dialog shown by the vendor other than sale items or transfer screens. The vendor is showing you something, and asking you to reply to it by choosing an option or reward. */
class DestinyVendorInteractionDefinition{
	
	/* The position of this interaction in its parent array. Note that this is NOT content agnostic, and should not be used as such. */
	int interactionIndex;
	
	/* The potential replies that the user can make to the interaction. */
	List<DestinyVendorInteractionReplyDefinition> replies;
	
	/* If >= 0, this is the category of sale items to show along with this interaction dialog. */
	int vendorCategoryIndex;
	
	/* If this interaction dialog is about a quest, this is the questline related to the interaction. You can use this to show the quest overview, or even the character's status with the quest if you use it to find the character's current Quest Step by checking their inventory against this questlineItemHash's DestinyInventoryItemDefinition.setData. */
	int questlineItemHash;
	
	/* If this interaction is meant to show you sacks, this is the list of types of sacks to be shown. If empty, the interaction is not meant to show sacks. */
	List<DestinyVendorInteractionSackEntryDefinition> sackInteractionList;
	
	/* A UI hint for the behavior of the interaction screen. This is useful to determine what type of interaction is occurring, such as a prompt to receive a rank up reward or a prompt to choose a reward for completing a quest. The hash isn't as useful as the Enum in retrospect, well what can you do. Try using interactionType instead. */
	int uiInteractionType;
	
	/* The enumerated version of the possible UI hints for vendor interactions, which is a little easier to grok than the hash found in uiInteractionType. */
	int interactionType;
	
	/* If this interaction is displaying rewards, this is the text to use for the header of the reward-displaying section of the interaction. */
	String rewardBlockLabel;
	
	/* If the vendor's reward list is sourced from one of his categories, this is the index into the category array of items to show. */
	int rewardVendorCategoryIndex;
	
	/* If the vendor interaction has flavor text, this is some of it. */
	String flavorLineOne;
	
	/* If the vendor interaction has flavor text, this is the rest of it. */
	String flavorLineTwo;
	
	/* The header for the interaction dialog. */
	DestinyDisplayPropertiesDefinition headerDisplayProperties;
	
	/* The localized text telling the player what to do when they see this dialog. */
	String instructions;
	DestinyVendorInteractionDefinition(
		this.interactionIndex,
		this.replies,
		this.vendorCategoryIndex,
		this.questlineItemHash,
		this.sackInteractionList,
		this.uiInteractionType,
		this.interactionType,
		this.rewardBlockLabel,
		this.rewardVendorCategoryIndex,
		this.flavorLineOne,
		this.flavorLineTwo,
		this.headerDisplayProperties,
		this.instructions,
	);

	static DestinyVendorInteractionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInteractionDefinition(
				data['interactionIndex'],
				data['replies'] != null ? DestinyVendorInteractionReplyDefinition.fromList(data['replies']) : null,
				data['vendorCategoryIndex'],
				data['questlineItemHash'],
				data['sackInteractionList'] != null ? DestinyVendorInteractionSackEntryDefinition.fromList(data['sackInteractionList']) : null,
				data['uiInteractionType'],
				data['interactionType'],
				data['rewardBlockLabel'],
				data['rewardVendorCategoryIndex'],
				data['flavorLineOne'],
				data['flavorLineTwo'],
				data['headerDisplayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['headerDisplayProperties']) : null,
				data['instructions'],
		);
	}

	static List<DestinyVendorInteractionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInteractionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInteractionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['interactionIndex'] = this.interactionIndex;
			data['replies'] = this.replies.map((item)=>item.toMap()).toList();
			data['vendorCategoryIndex'] = this.vendorCategoryIndex;
			data['questlineItemHash'] = this.questlineItemHash;
			data['sackInteractionList'] = this.sackInteractionList.map((item)=>item.toMap()).toList();
			data['uiInteractionType'] = this.uiInteractionType;
			data['interactionType'] = this.interactionType;
			data['rewardBlockLabel'] = this.rewardBlockLabel;
			data['rewardVendorCategoryIndex'] = this.rewardVendorCategoryIndex;
			data['flavorLineOne'] = this.flavorLineOne;
			data['flavorLineTwo'] = this.flavorLineTwo;
			data['headerDisplayProperties'] = this.headerDisplayProperties;
			data['instructions'] = this.instructions;
		return data;
	}
}