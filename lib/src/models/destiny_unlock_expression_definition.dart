import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_gating_scope.dart';

part 'destiny_unlock_expression_definition.g.dart';

/// Where the sausage gets made. Unlock Expressions are the foundation of the game&#39;s gating mechanics and investment-related restrictions. They can test Unlock Flags and Unlock Values for certain states, using a sufficient amount of logical operators such that unlock expressions are effectively Turing complete.
/// Use UnlockExpressionParser to evaluate expressions using an IUnlockContext parsed from Babel.
@JsonSerializable()
class DestinyUnlockExpressionDefinition{	
	DestinyUnlockExpressionDefinition();

	
	/// A shortcut for determining the most restrictive gating that this expression performs. See the DestinyGatingScope enum's documentation for more details.
	@JsonKey(name:'scope',fromJson:decodeDestinyGatingScope,toJson:encodeDestinyGatingScope)
	DestinyGatingScope? scope;

	factory DestinyUnlockExpressionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyUnlockExpressionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyUnlockExpressionDefinitionToJson(this);

	static Future<DestinyUnlockExpressionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyUnlockExpressionDefinition>((json)=>DestinyUnlockExpressionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}