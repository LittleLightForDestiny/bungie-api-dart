import 'destiny_vendor_category_overlay_definition.dart';

/** This is the definition for a single Vendor Category, into which Sale Items are grouped. */
class DestinyVendorCategoryEntryDefinition{
	
	/** The index of the category in the original category definitions for the vendor. */
	int categoryIndex;
	
	/** The string identifier of the category. */
	String categoryId;
	
	/** Used in sorting items in vendors... but there's a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself. */
	int sortValue;
	
	/** The hashed identifier for the category. */
	int categoryHash;
	
	/** The amount of items that will be available when this category is shown. */
	int quantityAvailable;
	
	/** If items aren't up for sale in this category, should we still show them (greyed out)? */
	bool showUnavailableItems;
	
	/** If you don't have the currency required to buy items from this category, should the items be hidden? */
	bool hideIfNoCurrency;
	
	/** True if this category doesn't allow purchases. */
	bool hideFromRegularPurchase;
	
	/** The localized string for making purchases from this category, if it is different from the vendor's string for purchasing. */
	String buyStringOverride;
	
	/** If the category is disabled, this is the localized description to show. */
	String disabledDescription;
	
	/** The localized title of the category. */
	String displayTitle;
	
	/** If this category has an overlay prompt that should appear, this contains the details of that prompt. */
	DestinyVendorCategoryOverlayDefinition overlay;
	
	/** A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime. */
	List<int> vendorItemIndexes;
	
	/** Sometimes a category isn't actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment. */
	bool isPreview;
	
	/** If true, this category only displays items: you can't purchase anything in them. */
	bool isDisplayOnly;
	
	/**  */
	int resetIntervalMinutesOverride;
	
	/**  */
	int resetOffsetMinutesOverride;
	DestinyVendorCategoryEntryDefinition(
		this.categoryIndex,
		this.categoryId,
		this.sortValue,
		this.categoryHash,
		this.quantityAvailable,
		this.showUnavailableItems,
		this.hideIfNoCurrency,
		this.hideFromRegularPurchase,
		this.buyStringOverride,
		this.disabledDescription,
		this.displayTitle,
		this.overlay,
		this.vendorItemIndexes,
		this.isPreview,
		this.isDisplayOnly,
		this.resetIntervalMinutesOverride,
		this.resetOffsetMinutesOverride,
	);

	static DestinyVendorCategoryEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorCategoryEntryDefinition(
				data['categoryIndex'],
				data['categoryId'],
				data['sortValue'],
				data['categoryHash'],
				data['quantityAvailable'],
				data['showUnavailableItems'],
				data['hideIfNoCurrency'],
				data['hideFromRegularPurchase'],
				data['buyStringOverride'],
				data['disabledDescription'],
				data['displayTitle'],
				data['overlay'] != null ? DestinyVendorCategoryOverlayDefinition.fromMap(data['overlay']) : null,
				data['vendorItemIndexes'] != null ? data['vendorItemIndexes']?.cast<int>() ?? null : null,
				data['isPreview'],
				data['isDisplayOnly'],
				data['resetIntervalMinutesOverride'],
				data['resetOffsetMinutesOverride'],
		);
	}

	static List<DestinyVendorCategoryEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorCategoryEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategoryEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryIndex'] = this.categoryIndex;
			data['categoryId'] = this.categoryId;
			data['sortValue'] = this.sortValue;
			data['categoryHash'] = this.categoryHash;
			data['quantityAvailable'] = this.quantityAvailable;
			data['showUnavailableItems'] = this.showUnavailableItems;
			data['hideIfNoCurrency'] = this.hideIfNoCurrency;
			data['hideFromRegularPurchase'] = this.hideFromRegularPurchase;
			data['buyStringOverride'] = this.buyStringOverride;
			data['disabledDescription'] = this.disabledDescription;
			data['displayTitle'] = this.displayTitle;
			data['overlay'] = this.overlay;
			data['vendorItemIndexes'] = this.vendorItemIndexes;
			data['isPreview'] = this.isPreview;
			data['isDisplayOnly'] = this.isDisplayOnly;
			data['resetIntervalMinutesOverride'] = this.resetIntervalMinutesOverride;
			data['resetOffsetMinutesOverride'] = this.resetOffsetMinutesOverride;
		return data;
	}
}