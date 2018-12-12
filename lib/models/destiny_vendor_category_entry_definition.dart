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
			data['categoryIndex'] = categoryIndex;
			data['categoryId'] = categoryId;
			data['sortValue'] = sortValue;
			data['categoryHash'] = categoryHash;
			data['quantityAvailable'] = quantityAvailable;
			data['showUnavailableItems'] = showUnavailableItems;
			data['hideIfNoCurrency'] = hideIfNoCurrency;
			data['hideFromRegularPurchase'] = hideFromRegularPurchase;
			data['buyStringOverride'] = buyStringOverride;
			data['disabledDescription'] = disabledDescription;
			data['displayTitle'] = displayTitle;
			data['overlay'] = overlay;
			data['vendorItemIndexes'] = vendorItemIndexes;
			data['isPreview'] = isPreview;
			data['isDisplayOnly'] = isDisplayOnly;
			data['resetIntervalMinutesOverride'] = resetIntervalMinutesOverride;
			data['resetOffsetMinutesOverride'] = resetOffsetMinutesOverride;
	}
}