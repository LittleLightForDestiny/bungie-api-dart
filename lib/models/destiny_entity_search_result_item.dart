import 'destiny_display_properties_definition.dart';

/** An individual Destiny Entity returned from the entity search. */
class DestinyEntitySearchResultItem{
	
	/** The hash identifier of the entity. You will use this to look up the DestinyDefinition relevant for the entity found. */
	int hash;
	
	/** The type of entity, returned as a string matching the DestinyDefinition's contract class name. You'll have to have your own mapping from class names to actually looking up those definitions in the manifest databases. */
	String entityType;
	
	/** Basic display properties on the entity, so you don't have to look up the definition to show basic results for the item. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The ranking value for sorting that we calculated using our relevance formula. This will hopefully get better with time and iteration. */
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