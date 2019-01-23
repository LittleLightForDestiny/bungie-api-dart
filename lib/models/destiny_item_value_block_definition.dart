import 'destiny_item_quantity.dart';

/** This defines an item's "Value". Unfortunately, this appears to be used in different ways depending on the way that the item itself is used.
For items being sold at a Vendor, this is the default "sale price" of the item. These days, the vendor itself almost always sets the price, but it still possible for the price to fall back to this value. For quests, it is a preview of rewards you can gain by completing the quest. For dummy items, if the itemValue refers to an Emblem, it is the emblem that should be shown as the reward. (jeez louise)
It will likely be used in a number of other ways in the future, it appears to be a bucket where they put arbitrary items and quantities into the item. */
class DestinyItemValueBlockDefinition{
	
	/** References to the items that make up this item's "value", and the quantity. */
	List<DestinyItemQuantity> itemValue;
	
	/** If there's a localized text description of the value provided, this will be said description. */
	String valueDescription;
	DestinyItemValueBlockDefinition(
		this.itemValue,
		this.valueDescription,
	);

	static DestinyItemValueBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemValueBlockDefinition(
				data['itemValue'] != null ? DestinyItemQuantity.fromList(data['itemValue']) : null,
				data['valueDescription'],
		);
	}

	static List<DestinyItemValueBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemValueBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemValueBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemValue'] = this.itemValue != null? this.itemValue.map((item)=>item.toMap()).toList() : null;
			data['valueDescription'] = this.valueDescription;
		return data;
	}
}