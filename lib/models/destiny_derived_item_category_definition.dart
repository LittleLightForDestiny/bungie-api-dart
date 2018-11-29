import 'destiny_derived_item_definition.dart';
class DestinyDerivedItemCategoryDefinition{
	String categoryDescription;
	List<DestinyDerivedItemDefinition> items;
	DestinyDerivedItemCategoryDefinition(
		String this.categoryDescription,
		List<DestinyDerivedItemDefinition> this.items,
	);

	static DestinyDerivedItemCategoryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyDerivedItemCategoryDefinition(
				data['categoryDescription'],
				DestinyDerivedItemDefinition.fromList(data['items']),
		);
	}

	static List<DestinyDerivedItemCategoryDefinition> fromList(List<dynamic> data){
		List<DestinyDerivedItemCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDerivedItemCategoryDefinition.fromJson(item));
    });
    return list;
	}
}