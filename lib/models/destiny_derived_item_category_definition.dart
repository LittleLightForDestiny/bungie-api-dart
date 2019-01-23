import 'destiny_derived_item_definition.dart';

/** A shortcut for the fact that some items have a "Preview Vendor" - See DestinyInventoryItemDefinition.preview.previewVendorHash - that is intended to be used to show what items you can get as a result of acquiring or using this item.
A common example of this in Destiny 1 was Eververse "Boxes," which could have many possible items. This "Preview Vendor" is not a vendor you can actually see in the game, but it defines categories and sale items for all of the possible items you could get from the Box so that the game can show them to you. We summarize that info here so that you don't have to do that Vendor lookup and aggregation manually. */
class DestinyDerivedItemCategoryDefinition{
	
	/** The localized string for the category title. This will be something describing the items you can get as a group, or your likelihood/the quantity you'll get. */
	String categoryDescription;
	
	/** This is the list of all of the items for this category and the basic properties we'll know about them. */
	List<DestinyDerivedItemDefinition> items;
	DestinyDerivedItemCategoryDefinition(
		this.categoryDescription,
		this.items,
	);

	static DestinyDerivedItemCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDerivedItemCategoryDefinition(
				data['categoryDescription'],
				data['items'] != null ? DestinyDerivedItemDefinition.fromList(data['items']) : null,
		);
	}

	static List<DestinyDerivedItemCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDerivedItemCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDerivedItemCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryDescription'] = this.categoryDescription;
			data['items'] = this.items != null? this.items.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}