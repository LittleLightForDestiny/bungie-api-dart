import 'destiny_display_properties_definition.dart';
class DestinyInventoryBucketDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int scope;
	int category;
	int bucketOrder;
	int itemCount;
	int location;
	bool hasTransferDestination;
	bool enabled;
	bool fifo;
	int hash;
	int index;
	bool redacted;
	DestinyInventoryBucketDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.scope,
		int this.category,
		int this.bucketOrder,
		int this.itemCount,
		int this.location,
		bool this.hasTransferDestination,
		bool this.enabled,
		bool this.fifo,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyInventoryBucketDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryBucketDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['scope'],
				data['category'],
				data['bucketOrder'],
				data['itemCount'],
				data['location'],
				data['hasTransferDestination'],
				data['enabled'],
				data['fifo'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyInventoryBucketDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryBucketDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryBucketDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['scope'] = scope;
			data['category'] = category;
			data['bucketOrder'] = bucketOrder;
			data['itemCount'] = itemCount;
			data['location'] = location;
			data['hasTransferDestination'] = hasTransferDestination;
			data['enabled'] = enabled;
			data['fifo'] = fifo;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}