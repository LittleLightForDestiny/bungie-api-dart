import 'destiny_vendor_display_properties_definition.dart';
import 'date_range.dart';
import 'destiny_vendor_action_definition.dart';
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
		this.displayProperties,
		this.buyString,
		this.sellString,
		this.displayItemHash,
		this.inhibitBuying,
		this.inhibitSelling,
		this.factionHash,
		this.resetIntervalMinutes,
		this.resetOffsetMinutes,
		this.failureStrings,
		this.unlockRanges,
		this.vendorIdentifier,
		this.vendorPortrait,
		this.vendorBanner,
		this.enabled,
		this.visible,
		this.vendorSubcategoryIdentifier,
		this.consolidateCategories,
		this.actions,
		this.categories,
		this.originalCategories,
		this.displayCategories,
		this.interactions,
		this.inventoryFlyouts,
		this.itemList,
		this.services,
		this.acceptedItems,
		this.returnWithVendorRequest,
		this.locations,
		this.groups,
		this.ignoreSaleItemHashes,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyVendorDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorDefinition(
				data['displayProperties'] != null ? DestinyVendorDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['buyString'],
				data['sellString'],
				data['displayItemHash'],
				data['inhibitBuying'],
				data['inhibitSelling'],
				data['factionHash'],
				data['resetIntervalMinutes'],
				data['resetOffsetMinutes'],
				data['failureStrings'] != null ? data['failureStrings']?.cast<String>() ?? null : null,
				data['unlockRanges'] != null ? DateRange.fromList(data['unlockRanges']) : null,
				data['vendorIdentifier'],
				data['vendorPortrait'],
				data['vendorBanner'],
				data['enabled'],
				data['visible'],
				data['vendorSubcategoryIdentifier'],
				data['consolidateCategories'],
				data['actions'] != null ? DestinyVendorActionDefinition.fromList(data['actions']) : null,
				data['categories'] != null ? DestinyVendorCategoryEntryDefinition.fromList(data['categories']) : null,
				data['originalCategories'] != null ? DestinyVendorCategoryEntryDefinition.fromList(data['originalCategories']) : null,
				data['displayCategories'] != null ? DestinyDisplayCategoryDefinition.fromList(data['displayCategories']) : null,
				data['interactions'] != null ? DestinyVendorInteractionDefinition.fromList(data['interactions']) : null,
				data['inventoryFlyouts'] != null ? DestinyVendorInventoryFlyoutDefinition.fromList(data['inventoryFlyouts']) : null,
				data['itemList'] != null ? DestinyVendorItemDefinition.fromList(data['itemList']) : null,
				data['services'] != null ? DestinyVendorServiceDefinition.fromList(data['services']) : null,
				data['acceptedItems'] != null ? DestinyVendorAcceptedItemDefinition.fromList(data['acceptedItems']) : null,
				data['returnWithVendorRequest'],
				data['locations'] != null ? DestinyVendorLocationDefinition.fromList(data['locations']) : null,
				data['groups'] != null ? DestinyVendorGroupReference.fromList(data['groups']) : null,
				data['ignoreSaleItemHashes'] != null ? data['ignoreSaleItemHashes']?.cast<int>() ?? null : null,
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