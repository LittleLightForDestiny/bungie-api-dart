import 'destiny_display_properties_definition.dart';
class DestinyEntitySearchResultItem{
	int hash;
	String entityType;
	DestinyDisplayPropertiesDefinition displayProperties;
	int weight;
	DestinyEntitySearchResultItem(
		int this.hash,
		String this.entityType,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.weight,
	);

	static DestinyEntitySearchResultItem fromJson(Map<String, dynamic> data){
		return new DestinyEntitySearchResultItem(
				data['hash'],
				data['entityType'],
				data['displayProperties'],
				data['weight'],
		);
	}

	static List<DestinyEntitySearchResultItem> fromList(List<dynamic> data){
		List<DestinyEntitySearchResultItem> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResultItem.fromJson(item));
    });
    return list;
	}
}