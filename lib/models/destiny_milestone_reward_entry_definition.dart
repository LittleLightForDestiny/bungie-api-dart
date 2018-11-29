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

	static DestinyMilestoneRewardEntryDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinyMilestoneRewardEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardEntryDefinition.fromJson(item));
    });
    return list;
	}
}