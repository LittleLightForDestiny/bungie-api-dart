import 'package:json_annotation/json_annotation.dart';

import 'destiny_inventory_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_inventory_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyInventoryComponent{
	
	SingleComponentResponseOfDestinyInventoryComponent();

	factory SingleComponentResponseOfDestinyInventoryComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyInventoryComponentFromJson(json);

	/// A list of minimal information for items in an inventory: be it a character's inventory, or a Profile's inventory. (Note that the Vault is a collection of inventory buckets in the Profile's inventory)
	/// Inventory Items returned here are in a flat list, but importantly they have a bucketHash property that indicates the specific inventory bucket that is holding them. These buckets constitute things like the separate sections of the Vault, the user's inventory slots, etc. See DestinyInventoryBucketDefinition for more info.
	@JsonKey(name:'data')
	DestinyInventoryComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyInventoryComponentToJson(this);
}