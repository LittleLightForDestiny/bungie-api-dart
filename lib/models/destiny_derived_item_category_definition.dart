import 'destiny_derived_item_definition.dart';
class DestinyDerivedItemCategoryDefinition{
	String categoryDescription;
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
			data['items'] = this.items.map((item)=>item.toMap()).toList();
		return data;
	}
}