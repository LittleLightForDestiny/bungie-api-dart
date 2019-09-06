
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_socket_category_definition.g.dart';

/// Sockets are grouped into categories in the UI. These define which category and which sockets are under that category.
@JsonSerializable()
class DestinyItemSocketCategoryDefinition {

	/// The hash for the Socket Category: a quick way to go get the header display information for the category. Use it to look up DestinySocketCategoryDefinition info.
	@JsonKey(name:'socketCategoryHash')
	int socketCategoryHash;

	/// Use these indexes to look up the sockets in the &quot;sockets.socketEntries&quot; property on the item definition. These are the indexes under the category, in game-rendered order.
	@JsonKey(name:'socketIndexes')
	List<int> socketIndexes;
	DestinyItemSocketCategoryDefinition();

	factory DestinyItemSocketCategoryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSocketCategoryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketCategoryDefinitionToJson(this);
}
