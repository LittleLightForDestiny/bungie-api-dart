import 'destiny_item_quantity.dart';
import 'destiny_display_properties_definition.dart';
class DestinyMilestoneRewardEntryDefinition{
	int rewardEntryHash;
	String rewardEntryIdentifier;
	List<DestinyItemQuantity> items;
	int vendorHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	int order;
	DestinyMilestoneRewardEntryDefinition(
		this.rewardEntryHash,
		this.rewardEntryIdentifier,
		this.items,
		this.vendorHash,
		this.displayProperties,
		this.order,
	);

	static DestinyMilestoneRewardEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardEntryDefinition(
				data['rewardEntryHash'],
				data['rewardEntryIdentifier'],
				data['items'] != null ? DestinyItemQuantity.fromList(data['items']) : null,
				data['vendorHash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['order'],
		);
	}

	static List<DestinyMilestoneRewardEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneRewardEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardEntryHash'] = this.rewardEntryHash;
			data['rewardEntryIdentifier'] = this.rewardEntryIdentifier;
			data['items'] = this.items.map((item)=>item.toMap()).toList();
			data['vendorHash'] = this.vendorHash;
			data['displayProperties'] = this.displayProperties;
			data['order'] = this.order;
		return data;
	}
}