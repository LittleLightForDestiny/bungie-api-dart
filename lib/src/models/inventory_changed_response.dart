import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_component.dart';

part 'inventory_changed_response.g.dart';

/// A response containing all of the components for all requested vendors.
@JsonSerializable()
class InventoryChangedResponse{	
	InventoryChangedResponse();

	
	/// Items that appeared in the inventory possibly as a result of an action.
	@JsonKey(name:'addedInventoryItems')
	List<DestinyItemComponent>? addedInventoryItems;
	
	/// Items that disappeared from the inventory possibly as a result of an action.
	@JsonKey(name:'removedInventoryItems')
	List<DestinyItemComponent>? removedInventoryItems;

	factory InventoryChangedResponse.fromJson(Map<String, dynamic> json) {
		return _$InventoryChangedResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$InventoryChangedResponseToJson(this);

	static Future<InventoryChangedResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, InventoryChangedResponse>((json)=>InventoryChangedResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}