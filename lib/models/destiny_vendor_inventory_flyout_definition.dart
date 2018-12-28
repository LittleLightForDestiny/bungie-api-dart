import 'destiny_display_properties_definition.dart';
import 'destiny_vendor_inventory_flyout_bucket_definition.dart';

/* The definition for an "inventory flyout": a UI screen where we show you part of an otherwise hidden vendor inventory: like the Vault inventory buckets. */
class DestinyVendorInventoryFlyoutDefinition{
	
	/* If the flyout is locked, this is the reason why. */
	String lockedDescription;
	
	/* The title and other common properties of the flyout. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* A list of inventory buckets and other metadata to show on the screen. */
	List<DestinyVendorInventoryFlyoutBucketDefinition> buckets;
	
	/* An identifier for the flyout, in case anything else needs to refer to them. */
	int flyoutId;
	
	/* If this is true, don't show any of the glistening "this is a new item" UI elements, like we show on the inventory items themselves in in-game UI. */
	bool suppressNewness;
	
	/* If this flyout is meant to show you the contents of the player's equipment slot, this is the slot to show. */
	int equipmentSlotHash;
	DestinyVendorInventoryFlyoutDefinition(
		this.lockedDescription,
		this.displayProperties,
		this.buckets,
		this.flyoutId,
		this.suppressNewness,
		this.equipmentSlotHash,
	);

	static DestinyVendorInventoryFlyoutDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInventoryFlyoutDefinition(
				data['lockedDescription'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['buckets'] != null ? DestinyVendorInventoryFlyoutBucketDefinition.fromList(data['buckets']) : null,
				data['flyoutId'],
				data['suppressNewness'],
				data['equipmentSlotHash'],
		);
	}

	static List<DestinyVendorInventoryFlyoutDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInventoryFlyoutDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInventoryFlyoutDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['lockedDescription'] = this.lockedDescription;
			data['displayProperties'] = this.displayProperties;
			data['buckets'] = this.buckets.map((item)=>item.toMap()).toList();
			data['flyoutId'] = this.flyoutId;
			data['suppressNewness'] = this.suppressNewness;
			data['equipmentSlotHash'] = this.equipmentSlotHash;
		return data;
	}
}