import 'destiny_item_component.dart';

/** A list of minimal information for items in an inventory: be it a character's inventory, or a Profile's inventory. (Note that the Vault is a collection of inventory buckets in the Profile's inventory)
Inventory Items returned here are in a flat list, but importantly they have a bucketHash property that indicates the specific inventory bucket that is holding them. These buckets constitute things like the separate sections of the Vault, the user's inventory slots, etc. See DestinyInventoryBucketDefinition for more info. */
class DestinyInventoryComponent{
	
	/** The items in this inventory. If you care to bucket them, use the item's bucketHash property to group them. */
	List<DestinyItemComponent> items;
	DestinyInventoryComponent(
		this.items,
	);

	static DestinyInventoryComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryComponent(
				data['items'] != null ? DestinyItemComponent.fromList(data['items']) : null,
		);
	}

	static List<DestinyInventoryComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['items'] = this.items.map((item)=>item.toMap()).toList();
		return data;
	}
}