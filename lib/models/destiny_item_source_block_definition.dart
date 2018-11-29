import 'destiny_item_source_definition.dart';
class DestinyItemSourceBlockDefinition{
	List<int> sourceHashes;
	List<DestinyItemSourceDefinition> sources;
	int exclusive;
	DestinyItemSourceBlockDefinition(
		List<int> this.sourceHashes,
		List<DestinyItemSourceDefinition> this.sources,
		int this.exclusive,
	);

	static DestinyItemSourceBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemSourceBlockDefinition(
				data['sourceHashes'],
				DestinyItemSourceDefinition.fromList(data['sources']),
				data['exclusive'],
		);
	}

	static List<DestinyItemSourceBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemSourceBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSourceBlockDefinition.fromJson(item));
    });
    return list;
	}
}