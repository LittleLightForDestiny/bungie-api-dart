import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_component.dart';

part 'inventory_changed_response.g.dart';

/// A response containing all of the components for all requested vendors.
@JsonSerializable()
class InventoryChangedResponse{
	
	InventoryChangedResponse();

	factory InventoryChangedResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$InventoryChangedResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Items that appeared in the inventory possibly as a result of an action.
	@JsonKey(name:'addedInventoryItems')
	List<DestinyItemComponent> addedInventoryItems;
	/// Items that disappeared from the inventory possibly as a result of an action.
	@JsonKey(name:'removedInventoryItems')
	List<DestinyItemComponent> removedInventoryItems;

	
	
	Map<String, dynamic> toJson() => _$InventoryChangedResponseToJson(this);
}