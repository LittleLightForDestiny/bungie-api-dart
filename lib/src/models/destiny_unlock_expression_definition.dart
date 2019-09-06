
import 'package:json_annotation/json_annotation.dart';
part 'destiny_unlock_expression_definition.g.dart';

/// Where the sausage gets made. Unlock Expressions are the foundation of the game&#39;s gating mechanics and investment-related restrictions. They can test Unlock Flags and Unlock Values for certain states, using a sufficient amount of logical operators such that unlock expressions are effectively Turing complete.
/// Use UnlockExpressionParser to evaluate expressions using an IUnlockContext parsed from Babel.
@JsonSerializable()
class DestinyUnlockExpressionDefinition {

	/// A shortcut for determining the most restrictive gating that this expression performs. See the DestinyGatingScope enum&#39;s documentation for more details.
	@JsonKey(name:'scope')
	int scope;
	DestinyUnlockExpressionDefinition();

	factory DestinyUnlockExpressionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyUnlockExpressionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyUnlockExpressionDefinitionToJson(this);
}
