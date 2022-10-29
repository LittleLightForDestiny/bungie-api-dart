import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_category_overlay_definition.dart';

part 'destiny_vendor_category_entry_definition.g.dart';

/// This is the definition for a single Vendor Category, into which Sale Items are grouped.
@JsonSerializable()
class DestinyVendorCategoryEntryDefinition{	
	DestinyVendorCategoryEntryDefinition();

	
	/// The index of the category in the original category definitions for the vendor.
	@JsonKey(name:'categoryIndex')
	int? categoryIndex;
	
	/// Used in sorting items in vendors... but there's a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself.
	@JsonKey(name:'sortValue')
	int? sortValue;
	
	/// The hashed identifier for the category.
	@JsonKey(name:'categoryHash')
	int? categoryHash;
	
	/// The amount of items that will be available when this category is shown.
	@JsonKey(name:'quantityAvailable')
	int? quantityAvailable;
	
	/// If items aren't up for sale in this category, should we still show them (greyed out)?
	@JsonKey(name:'showUnavailableItems')
	bool? showUnavailableItems;
	
	/// If you don't have the currency required to buy items from this category, should the items be hidden?
	@JsonKey(name:'hideIfNoCurrency')
	bool? hideIfNoCurrency;
	
	/// True if this category doesn't allow purchases.
	@JsonKey(name:'hideFromRegularPurchase')
	bool? hideFromRegularPurchase;
	
	/// The localized string for making purchases from this category, if it is different from the vendor's string for purchasing.
	@JsonKey(name:'buyStringOverride')
	String? buyStringOverride;
	
	/// If the category is disabled, this is the localized description to show.
	@JsonKey(name:'disabledDescription')
	String? disabledDescription;
	
	/// The localized title of the category.
	@JsonKey(name:'displayTitle')
	String? displayTitle;
	
	/// If this category has an overlay prompt that should appear, this contains the details of that prompt.
	@JsonKey(name:'overlay')
	DestinyVendorCategoryOverlayDefinition? overlay;
	
	/// A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime.
	@JsonKey(name:'vendorItemIndexes')
	List<int>? vendorItemIndexes;
	
	/// Sometimes a category isn't actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment.
	@JsonKey(name:'isPreview')
	bool? isPreview;
	
	/// If true, this category only displays items: you can't purchase anything in them.
	@JsonKey(name:'isDisplayOnly')
	bool? isDisplayOnly;
	
	@JsonKey(name:'resetIntervalMinutesOverride')
	int? resetIntervalMinutesOverride;
	
	@JsonKey(name:'resetOffsetMinutesOverride')
	int? resetOffsetMinutesOverride;

	factory DestinyVendorCategoryEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorCategoryEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorCategoryEntryDefinitionToJson(this);

	static Future<DestinyVendorCategoryEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorCategoryEntryDefinition>((json)=>DestinyVendorCategoryEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}