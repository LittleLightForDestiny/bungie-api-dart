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

	static DestinyVendorInventoryFlyoutDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyVendorInventoryFlyoutDefinition.fromJson(item));
    });
    return list;
	}
}