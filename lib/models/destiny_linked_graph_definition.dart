import 'destiny_unlock_expression_definition.dart';
import 'destiny_linked_graph_entry_definition.dart';

/** This describes links between the current graph and others, as well as when that link is relevant. */
class DestinyLinkedGraphDefinition{
	
	/**  */
	String description;
	
	/**  */
	String name;
	
	/** Where the sausage gets made. Unlock Expressions are the foundation of the game's gating mechanics and investment-related restrictions. They can test Unlock Flags and Unlock Values for certain states, using a sufficient amount of logical operators such that unlock expressions are effectively Turing complete.
Use UnlockExpressionParser to evaluate expressions using an IUnlockContext parsed from Babel. */
	DestinyUnlockExpressionDefinition unlockExpression;
	
	/**  */
	int linkedGraphId;
	
	/**  */
	List<DestinyLinkedGraphEntryDefinition> linkedGraphs;
	
	/**  */
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