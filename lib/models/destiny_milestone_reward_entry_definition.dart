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
		int this.rewardEntryHash,
		String this.rewardEntryIdentifier,
		List<DestinyItemQuantity> this.items,
		int this.vendorHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.order,
	);

	static DestinyMilestoneRewardEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardEntryDefinition(
				data['rewardEntryHash'],
				data['rewardEntryIdentifier'],
				DestinyItemQuantity.fromList(data['items']),
				data['vendorHash'],
				data['displayProperties'],
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
			data['rewardEntryHash'] = rewardEntryHash;
			data['rewardEntryIdentifier'] = rewardEntryIdentifier;
			data['items'] = items.map((item)=>item.toMap());
			data['vendorHash'] = vendorHash;
			data['displayProperties'] = displayProperties;
			data['order'] = order;
	}
}