
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_action_required_item_definition.g.dart';

/// The definition of an item and quantity required in a character&#39;s inventory in order to perform an action.
@JsonSerializable()
class DestinyItemActionRequiredItemDefinition {

	/// The minimum quantity of the item you have to have.
	@JsonKey(name:'count')
	int count;

	/// The hash identifier of the item you need to have. Use it to look up the DestinyInventoryItemDefinition for more info.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If true, the item&#x2F;quantity will be deleted from your inventory when the action is performed. Otherwise, you&#39;ll retain these required items after the action is complete.
	@JsonKey(name:'deleteOnAction')
	bool deleteOnAction;
	DestinyItemActionRequiredItemDefinition();

	factory DestinyItemActionRequiredItemDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemActionRequiredItemDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemActionRequiredItemDefinitionToJson(this);
}
