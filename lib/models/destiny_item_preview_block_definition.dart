import 'destiny_derived_item_category_definition.dart';
class DestinyItemPreviewBlockDefinition{
	String screenStyle;
	int previewVendorHash;
	String previewActionString;
	List<DestinyDerivedItemCategoryDefinition> derivedItemCategories;
	DestinyItemPreviewBlockDefinition(
		String this.screenStyle,
		int this.previewVendorHash,
		String this.previewActionString,
		List<DestinyDerivedItemCategoryDefinition> this.derivedItemCategories,
	);

	static DestinyItemPreviewBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPreviewBlockDefinition(
				data['screenStyle'],
				data['previewVendorHash'],
				data['previewActionString'],
				DestinyDerivedItemCategoryDefinition.fromList(data['derivedItemCategories']),
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