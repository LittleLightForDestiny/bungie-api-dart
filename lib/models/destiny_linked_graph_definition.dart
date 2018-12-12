import 'destiny_unlock_expression_definition.dart';
import 'destiny_linked_graph_entry_definition.dart';
class DestinyLinkedGraphDefinition{
	String description;
	String name;
	DestinyUnlockExpressionDefinition unlockExpression;
	int linkedGraphId;
	List<DestinyLinkedGraphEntryDefinition> linkedGraphs;
	String overview;
	DestinyLinkedGraphDefinition(
		String this.description,
		String this.name,
		DestinyUnlockExpressionDefinition this.unlockExpression,
		int this.linkedGraphId,
		List<DestinyLinkedGraphEntryDefinition> this.linkedGraphs,
		String this.overview,
	);

	static DestinyLinkedGraphDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLinkedGraphDefinition(
				data['description'],
				data['name'],
				DestinyUnlockExpressionDefinition.fromMap(data['unlockExpression']),
				data['linkedGraphId'],
				DestinyLinkedGraphEntryDefinition.fromList(data['linkedGraphs']),
				data['overview'],
		);
	}

	static List<DestinyLinkedGraphDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLinkedGraphDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedGraphDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = this.description;
			data['name'] = this.name;
			data['unlockExpression'] = this.unlockExpression.toMap();
			data['linkedGraphId'] = this.linkedGraphId;
			data['linkedGraphs'] = this.linkedGraphs.map((item)=>item.toMap());
			data['overview'] = this.overview;
		return data;
	}
}