import 'destiny_display_properties_definition.dart';
class DestinyEntitySearchResultItem{
	int hash;
	String entityType;
	DestinyDisplayPropertiesDefinition displayProperties;
	int weight;
	DestinyEntitySearchResultItem(
		this.hash,
		this.entityType,
		this.displayProperties,
		this.weight,
	);

	static DestinyEntitySearchResultItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEntitySearchResultItem(
				data['hash'],
				data['entityType'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['weight'],
		);
	}

	static List<DestinyEntitySearchResultItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEntitySearchResultItem> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResultItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['entityType'] = this.entityType;
			data['displayProperties'] = this.displayProperties;
			data['weight'] = this.weight;
		return data;
	}
}