import 'destiny_unlock_expression_definition.dart';
import 'destiny_linked_graph_entry_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_linked_graph_definition.g.dart';

/// This describes links between the current graph and others, as well as when that link is relevant.
@JsonSerializable()
class DestinyLinkedGraphDefinition {

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'name')
	String name;

	/// Where the sausage gets made. Unlock Expressions are the foundation of the game&#39;s gating mechanics and investment-related restrictions. They can test Unlock Flags and Unlock Values for certain states, using a sufficient amount of logical operators such that unlock expressions are effectively Turing complete.
	/// Use UnlockExpressionParser to evaluate expressions using an IUnlockContext parsed from Babel.
	@JsonKey(name:'unlockExpression')
	DestinyUnlockExpressionDefinition unlockExpression;

	@JsonKey(name:'linkedGraphId')
	int linkedGraphId;

	@JsonKey(name:'linkedGraphs')
	List<DestinyLinkedGraphEntryDefinition> linkedGraphs;

	@JsonKey(name:'overview')
	String overview;
	DestinyLinkedGraphDefinition();

	factory DestinyLinkedGraphDefinition.fromJson(Map<String, dynamic> json) => _$DestinyLinkedGraphDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLinkedGraphDefinitionToJson(this);
}
