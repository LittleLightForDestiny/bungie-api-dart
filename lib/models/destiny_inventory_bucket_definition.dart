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
		this.displayProperties,
		this.scope,
		this.category,
		this.bucketOrder,
		this.itemCount,
		this.location,
		this.hasTransferDestination,
		this.enabled,
		this.fifo,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyInventoryBucketDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryBucketDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['displayProperties'] = this.displayProperties.toMap();
			data['scope'] = this.scope;
			data['category'] = this.category;
			data['bucketOrder'] = this.bucketOrder;
			data['itemCount'] = this.itemCount;
			data['location'] = this.location;
			data['hasTransferDestination'] = this.hasTransferDestination;
			data['enabled'] = this.enabled;
			data['fifo'] = this.fifo;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}