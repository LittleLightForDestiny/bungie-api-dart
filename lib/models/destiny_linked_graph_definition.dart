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

	static DestinyLinkedGraphDefinition fromJson(Map<String, dynamic> data){
		return new DestinyLinkedGraphDefinition(
				data['description'],
				data['name'],
				DestinyUnlockExpressionDefinition.fromJson(data['unlockExpression']),
				data['linkedGraphId'],
				DestinyLinkedGraphEntryDefinition.fromList(data['linkedGraphs']),
				data['overview'],
		);
	}

	static List<DestinyLinkedGraphDefinition> fromList(List<dynamic> data){
		List<DestinyLinkedGraphDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedGraphDefinition.fromJson(item));
    });
    return list;
	}
}