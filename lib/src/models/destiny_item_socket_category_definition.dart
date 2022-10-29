import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_socket_category_definition.g.dart';

/// Sockets are grouped into categories in the UI. These define which category and which sockets are under that category.
@JsonSerializable()
class DestinyItemSocketCategoryDefinition{	
	DestinyItemSocketCategoryDefinition();

	
	/// The hash for the Socket Category: a quick way to go get the header display information for the category. Use it to look up DestinySocketCategoryDefinition info.
	@JsonKey(name:'socketCategoryHash')
	int? socketCategoryHash;
	
	/// Use these indexes to look up the sockets in the "sockets.socketEntries" property on the item definition. These are the indexes under the category, in game-rendered order.
	@JsonKey(name:'socketIndexes')
	List<int>? socketIndexes;

	factory DestinyItemSocketCategoryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketCategoryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketCategoryDefinitionToJson(this);

	static Future<DestinyItemSocketCategoryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSocketCategoryDefinition>((json)=>DestinyItemSocketCategoryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}