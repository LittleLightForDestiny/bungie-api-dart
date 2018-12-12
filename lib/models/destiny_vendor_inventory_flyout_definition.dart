import 'destiny_display_properties_definition.dart';
import 'destiny_vendor_inventory_flyout_bucket_definition.dart';
class DestinyVendorInventoryFlyoutDefinition{
	String lockedDescription;
	DestinyDisplayPropertiesDefinition displayProperties;
	List<DestinyVendorInventoryFlyoutBucketDefinition> buckets;
	int flyoutId;
	bool suppressNewness;
	int equipmentSlotHash;
	DestinyVendorInventoryFlyoutDefinition(
		String this.lockedDescription,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		List<DestinyVendorInventoryFlyoutBucketDefinition> this.buckets,
		int this.flyoutId,
		bool this.suppressNewness,
		int this.equipmentSlotHash,
	);

	static DestinyVendorInventoryFlyoutDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInventoryFlyoutDefinition(
				data['lockedDescription'],
				data['displayProperties'],
				DestinyVendorInventoryFlyoutBucketDefinition.fromList(data['buckets']),
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