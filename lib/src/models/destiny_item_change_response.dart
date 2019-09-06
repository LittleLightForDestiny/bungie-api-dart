import 'destiny_item_response.dart';
import 'destiny_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_change_response.g.dart';

@JsonSerializable()
class DestinyItemChangeResponse {

	/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn&#39;t have an &quot;itemInstanceId&quot;: for those, get your information from the DestinyInventoryDefinition.
	@JsonKey(name:'item')
	DestinyItemResponse item;

	/// Items that appeared in the inventory possibly as a result of an action.
	@JsonKey(name:'addedInventoryItems')
	List<DestinyItemComponent> addedInventoryItems;

	/// Items that disappeared from the inventory possibly as a result of an action.
	@JsonKey(name:'removedInventoryItems')
	List<DestinyItemComponent> removedInventoryItems;
	DestinyItemChangeResponse();

	factory DestinyItemChangeResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemChangeResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemChangeResponseToJson(this);
}
