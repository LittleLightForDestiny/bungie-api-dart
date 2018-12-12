import 'destiny_vendor_category_overlay_definition.dart';
class DestinyVendorCategoryEntryDefinition{
	int categoryIndex;
	String categoryId;
	int sortValue;
	int categoryHash;
	int quantityAvailable;
	bool showUnavailableItems;
	bool hideIfNoCurrency;
	bool hideFromRegularPurchase;
	String buyStringOverride;
	String disabledDescription;
	String displayTitle;
	DestinyVendorCategoryOverlayDefinition overlay;
	List<int> vendorItemIndexes;
	bool isPreview;
	bool isDisplayOnly;
	int resetIntervalMinutesOverride;
	int resetOffsetMinutesOverride;
	DestinyVendorCategoryEntryDefinition(
		int this.categoryIndex,
		String this.categoryId,
		int this.sortValue,
		int this.categoryHash,
		int this.quantityAvailable,
		bool this.showUnavailableItems,
		bool this.hideIfNoCurrency,
		bool this.hideFromRegularPurchase,
		String this.buyStringOverride,
		String this.disabledDescription,
		String this.displayTitle,
		DestinyVendorCategoryOverlayDefinition this.overlay,
		List<int> this.vendorItemIndexes,
		bool this.isPreview,
		bool this.isDisplayOnly,
		int this.resetIntervalMinutesOverride,
		int this.resetOffsetMinutesOverride,
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
				data['overlay'],
				data['vendorItemIndexes'],
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