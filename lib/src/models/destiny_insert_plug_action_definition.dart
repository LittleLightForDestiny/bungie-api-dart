
import 'package:json_annotation/json_annotation.dart';
part 'destiny_insert_plug_action_definition.g.dart';

/// Data related to what happens while a plug is being inserted, mostly for UI purposes.
@JsonSerializable()
class DestinyInsertPlugActionDefinition {

	/// How long it takes for the Plugging of the item to be completed once it is initiated, if you care.
	@JsonKey(name:'actionExecuteSeconds')
	int actionExecuteSeconds;

	/// The type of action being performed when you act on this Socket Type. The most common value is &quot;insert plug&quot;, but there are others as well (for instance, a &quot;Masterwork&quot; socket may allow for Re-initialization, and an Infusion socket allows for items to be consumed to upgrade the item)
	@JsonKey(name:'actionType')
	int actionType;
	DestinyInsertPlugActionDefinition();

	factory DestinyInsertPlugActionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyInsertPlugActionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugActionDefinitionToJson(this);
}
