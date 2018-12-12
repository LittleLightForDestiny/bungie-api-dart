import 'destiny_vendor_interaction_reply_definition.dart';
import 'destiny_vendor_interaction_sack_entry_definition.dart';
import 'destiny_display_properties_definition.dart';
class DestinyVendorInteractionDefinition{
	int interactionIndex;
	List<DestinyVendorInteractionReplyDefinition> replies;
	int vendorCategoryIndex;
	int questlineItemHash;
	List<DestinyVendorInteractionSackEntryDefinition> sackInteractionList;
	int uiInteractionType;
	int interactionType;
	String rewardBlockLabel;
	int rewardVendorCategoryIndex;
	String flavorLineOne;
	String flavorLineTwo;
	DestinyDisplayPropertiesDefinition headerDisplayProperties;
	String instructions;
	DestinyVendorInteractionDefinition(
		int this.interactionIndex,
		List<DestinyVendorInteractionReplyDefinition> this.replies,
		int this.vendorCategoryIndex,
		int this.questlineItemHash,
		List<DestinyVendorInteractionSackEntryDefinition> this.sackInteractionList,
		int this.uiInteractionType,
		int this.interactionType,
		String this.rewardBlockLabel,
		int this.rewardVendorCategoryIndex,
		String this.flavorLineOne,
		String this.flavorLineTwo,
		DestinyDisplayPropertiesDefinition this.headerDisplayProperties,
		String this.instructions,
	);

	static DestinyVendorInteractionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInteractionDefinition(
				data['interactionIndex'],
				DestinyVendorInteractionReplyDefinition.fromList(data['replies']),
				data['vendorCategoryIndex'],
				data['questlineItemHash'],
				DestinyVendorInteractionSackEntryDefinition.fromList(data['sackInteractionList']),
				data['uiInteractionType'],
				data['interactionType'],
				data['rewardBlockLabel'],
				data['rewardVendorCategoryIndex'],
				data['flavorLineOne'],
				data['flavorLineTwo'],
				data['headerDisplayProperties'],
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
			data['replies'] = this.replies.map((item)=>item.toMap());
			data['vendorCategoryIndex'] = this.vendorCategoryIndex;
			data['questlineItemHash'] = this.questlineItemHash;
			data['sackInteractionList'] = this.sackInteractionList.map((item)=>item.toMap());
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