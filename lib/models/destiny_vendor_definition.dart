import 'destiny_vendor_display_properties_definition.dart';
import 'date_range.dart';
import 'destiny_vendor_action_definition.dart';
import 'destiny_vendor_category_entry_definition.dart';
import 'destiny_vendor_category_entry_definition.dart';
import 'destiny_display_category_definition.dart';
import 'destiny_vendor_interaction_definition.dart';
import 'destiny_vendor_inventory_flyout_definition.dart';
import 'destiny_vendor_item_definition.dart';
import 'destiny_vendor_service_definition.dart';
import 'destiny_vendor_accepted_item_definition.dart';
import 'destiny_vendor_location_definition.dart';
import 'destiny_vendor_group_reference.dart';
class DestinyVendorDefinition{
	DestinyVendorDisplayPropertiesDefinition displayProperties;
	String buyString;
	String sellString;
	int displayItemHash;
	bool inhibitBuying;
	bool inhibitSelling;
	int factionHash;
	int resetIntervalMinutes;
	int resetOffsetMinutes;
	List<String> failureStrings;
	List<DateRange> unlockRanges;
	String vendorIdentifier;
	String vendorPortrait;
	String vendorBanner;
	bool enabled;
	bool visible;
	String vendorSubcategoryIdentifier;
	bool consolidateCategories;
	List<DestinyVendorActionDefinition> actions;
	List<DestinyVendorCategoryEntryDefinition> categories;
	List<DestinyVendorCategoryEntryDefinition> originalCategories;
	List<DestinyDisplayCategoryDefinition> displayCategories;
	List<DestinyVendorInteractionDefinition> interactions;
	List<DestinyVendorInventoryFlyoutDefinition> inventoryFlyouts;
	List<DestinyVendorItemDefinition> itemList;
	List<DestinyVendorServiceDefinition> services;
	List<DestinyVendorAcceptedItemDefinition> acceptedItems;
	bool returnWithVendorRequest;
	List<DestinyVendorLocationDefinition> locations;
	List<DestinyVendorGroupReference> groups;
	List<int> ignoreSaleItemHashes;
	int hash;
	int index;
	bool redacted;
	DestinyVendorDefinition(
		DestinyVendorDisplayPropertiesDefinition this.displayProperties,
		String this.buyString,
		String this.sellString,
		int this.displayItemHash,
		bool this.inhibitBuying,
		bool this.inhibitSelling,
		int this.factionHash,
		int this.resetIntervalMinutes,
		int this.resetOffsetMinutes,
		List<String> this.failureStrings,
		List<DateRange> this.unlockRanges,
		String this.vendorIdentifier,
		String this.vendorPortrait,
		String this.vendorBanner,
		bool this.enabled,
		bool this.visible,
		String this.vendorSubcategoryIdentifier,
		bool this.consolidateCategories,
		List<DestinyVendorActionDefinition> this.actions,
		List<DestinyVendorCategoryEntryDefinition> this.categories,
		List<DestinyVendorCategoryEntryDefinition> this.originalCategories,
		List<DestinyDisplayCategoryDefinition> this.displayCategories,
		List<DestinyVendorInteractionDefinition> this.interactions,
		List<DestinyVendorInventoryFlyoutDefinition> this.inventoryFlyouts,
		List<DestinyVendorItemDefinition> this.itemList,
		List<DestinyVendorServiceDefinition> this.services,
		List<DestinyVendorAcceptedItemDefinition> this.acceptedItems,
		bool this.returnWithVendorRequest,
		List<DestinyVendorLocationDefinition> this.locations,
		List<DestinyVendorGroupReference> this.groups,
		List<int> this.ignoreSaleItemHashes,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyVendorDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorDefinition(
				DestinyVendorDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['buyString'],
				data['sellString'],
				data['displayItemHash'],
				data['inhibitBuying'],
				data['inhibitSelling'],
				data['factionHash'],
				data['resetIntervalMinutes'],
				data['resetOffsetMinutes'],
				data['failureStrings'],
				DateRange.fromList(data['unlockRanges']),
				data['vendorIdentifier'],
				data['vendorPortrait'],
				data['vendorBanner'],
				data['enabled'],
				data['visible'],
				data['vendorSubcategoryIdentifier'],
				data['consolidateCategories'],
				DestinyVendorActionDefinition.fromList(data['actions']),
				DestinyVendorCategoryEntryDefinition.fromList(data['categories']),
				DestinyVendorCategoryEntryDefinition.fromList(data['originalCategories']),
				DestinyDisplayCategoryDefinition.fromList(data['displayCategories']),
				DestinyVendorInteractionDefinition.fromList(data['interactions']),
				DestinyVendorInventoryFlyoutDefinition.fromList(data['inventoryFlyouts']),
				DestinyVendorItemDefinition.fromList(data['itemList']),
				DestinyVendorServiceDefinition.fromList(data['services']),
				DestinyVendorAcceptedItemDefinition.fromList(data['acceptedItems']),
				data['returnWithVendorRequest'],
				DestinyVendorLocationDefinition.fromList(data['locations']),
				DestinyVendorGroupReference.fromList(data['groups']),
				data['ignoreSaleItemHashes'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyVendorDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['buyString'] = this.buyString;
			data['sellString'] = this.sellString;
			data['displayItemHash'] = this.displayItemHash;
			data['inhibitBuying'] = this.inhibitBuying;
			data['inhibitSelling'] = this.inhibitSelling;
			data['factionHash'] = this.factionHash;
			data['resetIntervalMinutes'] = this.resetIntervalMinutes;
			data['resetOffsetMinutes'] = this.resetOffsetMinutes;
			data['failureStrings'] = this.failureStrings;
			data['unlockRanges'] = this.unlockRanges.map((item)=>item.toMap()).toList();
			data['vendorIdentifier'] = this.vendorIdentifier;
			data['vendorPortrait'] = this.vendorPortrait;
			data['vendorBanner'] = this.vendorBanner;
			data['enabled'] = this.enabled;
			data['visible'] = this.visible;
			data['vendorSubcategoryIdentifier'] = this.vendorSubcategoryIdentifier;
			data['consolidateCategories'] = this.consolidateCategories;
			data['actions'] = this.actions.map((item)=>item.toMap()).toList();
			data['categories'] = this.categories.map((item)=>item.toMap()).toList();
			data['originalCategories'] = this.originalCategories.map((item)=>item.toMap()).toList();
			data['displayCategories'] = this.displayCategories.map((item)=>item.toMap()).toList();
			data['interactions'] = this.interactions.map((item)=>item.toMap()).toList();
			data['inventoryFlyouts'] = this.inventoryFlyouts.map((item)=>item.toMap()).toList();
			data['itemList'] = this.itemList.map((item)=>item.toMap()).toList();
			data['services'] = this.services.map((item)=>item.toMap()).toList();
			data['acceptedItems'] = this.acceptedItems.map((item)=>item.toMap()).toList();
			data['returnWithVendorRequest'] = this.returnWithVendorRequest;
			data['locations'] = this.locations.map((item)=>item.toMap()).toList();
			data['groups'] = this.groups.map((item)=>item.toMap()).toList();
			data['ignoreSaleItemHashes'] = this.ignoreSaleItemHashes;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}