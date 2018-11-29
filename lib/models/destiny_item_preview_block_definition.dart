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

	static DestinyItemPreviewBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemPreviewBlockDefinition(
				data['screenStyle'],
				data['previewVendorHash'],
				data['previewActionString'],
				DestinyDerivedItemCategoryDefinition.fromList(data['derivedItemCategories']),
		);
	}

	static List<DestinyItemPreviewBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemPreviewBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPreviewBlockDefinition.fromJson(item));
    });
    return list;
	}
}