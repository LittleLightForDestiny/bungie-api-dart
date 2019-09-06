import 'destiny_inventory_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_inventory_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyInventoryComponent {

	/// A list of minimal information for items in an inventory: be it a character&#39;s inventory, or a Profile&#39;s inventory. (Note that the Vault is a collection of inventory buckets in the Profile&#39;s inventory)
	/// Inventory Items returned here are in a flat list, but importantly they have a bucketHash property that indicates the specific inventory bucket that is holding them. These buckets constitute things like the separate sections of the Vault, the user&#39;s inventory slots, etc. See DestinyInventoryBucketDefinition for more info.
	@JsonKey(name:'data')
	DestinyInventoryComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyInventoryComponent();

	factory SingleComponentResponseOfDestinyInventoryComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyInventoryComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyInventoryComponentToJson(this);
}
