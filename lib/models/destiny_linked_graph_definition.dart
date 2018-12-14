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
		this.description,
		this.name,
		this.unlockExpression,
		this.linkedGraphId,
		this.linkedGraphs,
		this.overview,
	);

	static DestinyLinkedGraphDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLinkedGraphDefinition(
				data['description'],
				data['name'],
				data['unlockExpression'] != null ? DestinyUnlockExpressionDefinition.fromMap(data['unlockExpression']) : null,
				data['linkedGraphId'],
				data['linkedGraphs'] != null ? DestinyLinkedGraphEntryDefinition.fromList(data['linkedGraphs']) : null,
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
			data['linkedGraphs'] = this.linkedGraphs.map((item)=>item.toMap()).toList();
			data['overview'] = this.overview;
		return data;
	}
}