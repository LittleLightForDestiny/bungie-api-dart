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

	static DestinyInventoryBucketDefinition fromJson(Map<String, dynamic> data){
		return new DestinyInventoryBucketDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
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
		List<DestinyInventoryBucketDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryBucketDefinition.fromJson(item));
    });
    return list;
	}
}