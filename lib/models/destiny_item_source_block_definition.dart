import 'destiny_item_source_definition.dart';
class DestinyItemSourceBlockDefinition{
	List<int> sourceHashes;
	List<DestinyItemSourceDefinition> sources;
	int exclusive;
	DestinyItemSourceBlockDefinition(
		this.sourceHashes,
		this.sources,
		this.exclusive,
	);

	static DestinyItemSourceBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSourceBlockDefinition(
				data['sourceHashes'] != null ? data['sourceHashes']?.cast<int>() ?? null : null,
				data['sources'] != null ? DestinyItemSourceDefinition.fromList(data['sources']) : null,
				data['exclusive'],
		);
	}

	static List<DestinyItemSourceBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSourceBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSourceBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sourceHashes'] = this.sourceHashes;
			data['sources'] = this.sources.map((item)=>item.toMap()).toList();
			data['exclusive'] = this.exclusive;
		return data;
	}
}