import 'destiny_item_quantity.dart';
import 'destiny_display_properties_definition.dart';

/** The definition of a specific reward, which may be contained in a category of rewards and that has optional information about how it is obtained. */
class DestinyMilestoneRewardEntryDefinition{
	
	/** The identifier for this reward entry. Runtime data will refer to reward entries by this hash. Only guaranteed unique within the specific Milestone. */
	int rewardEntryHash;
	
	/** The string identifier, if you care about it. Only guaranteed unique within the specific Milestone. */
	String rewardEntryIdentifier;
	
	/** The items you will get as rewards, and how much of it you'll get. */
	List<DestinyItemQuantity> items;
	
	/** If this reward is redeemed at a Vendor, this is the hash of the Vendor to go to in order to redeem the reward. Use this hash to look up the DestinyVendorDefinition. */
	int vendorHash;
	
	/** For us to bother returning this info, we should be able to return some kind of information about why these rewards are grouped together. This is ideally that information. Look at how confident I am that this will always remain true. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** If you want to follow BNet's ordering of these rewards, use this number within a given category to order the rewards. Yeah, I know. I feel dirty too. */
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
			data['items'] = this.items != null? this.items.map((item)=>item.toMap()).toList() : null;
			data['vendorHash'] = this.vendorHash;
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['order'] = this.order;
		return data;
	}
}