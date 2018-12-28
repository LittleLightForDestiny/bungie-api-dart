import 'destiny_derived_item_category_definition.dart';

/* Items like Sacks or Boxes can have items that it shows in-game when you view details that represent the items you can obtain if you use or acquire the item.
This defines those categories, and gives some insights into that data's source. */
class DestinyItemPreviewBlockDefinition{
	
	/* A string that the game UI uses as a hint for which detail screen to show for the item. You, too, can leverage this for your own custom screen detail views. Note, however, that these are arbitrarily defined by designers: there's no guarantees of a fixed, known number of these - so fall back to something reasonable if you don't recognize it. */
	String screenStyle;
	
	/* If the preview data is derived from a fake "Preview" Vendor, this will be the hash identifier for the DestinyVendorDefinition of that fake vendor. */
	int previewVendorHash;
	
	/* If the preview has an associated action (like "Open"), this will be the localized string for that action. */
	String previewActionString;
	
	/* This is a list of the items being previewed, categorized in the same way as they are in the preview UI. */
	List<DestinyDerivedItemCategoryDefinition> derivedItemCategories;
	DestinyItemPreviewBlockDefinition(
		this.screenStyle,
		this.previewVendorHash,
		this.previewActionString,
		this.derivedItemCategories,
	);

	static DestinyItemPreviewBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPreviewBlockDefinition(
				data['screenStyle'],
				data['previewVendorHash'],
				data['previewActionString'],
				data['derivedItemCategories'] != null ? DestinyDerivedItemCategoryDefinition.fromList(data['derivedItemCategories']) : null,
		);
	}

	static List<DestinyItemPreviewBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPreviewBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPreviewBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['screenStyle'] = this.screenStyle;
			data['previewVendorHash'] = this.previewVendorHash;
			data['previewActionString'] = this.previewActionString;
			data['derivedItemCategories'] = this.derivedItemCategories.map((item)=>item.toMap()).toList();
		return data;
	}
}