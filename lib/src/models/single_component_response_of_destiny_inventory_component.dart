import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_inventory_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_inventory_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyInventoryComponent{	
	SingleComponentResponseOfDestinyInventoryComponent();

	
	/// A list of minimal information for items in an inventory: be it a character's inventory, or a Profile's inventory. (Note that the Vault is a collection of inventory buckets in the Profile's inventory)
	/// Inventory Items returned here are in a flat list, but importantly they have a bucketHash property that indicates the specific inventory bucket that is holding them. These buckets constitute things like the separate sections of the Vault, the user's inventory slots, etc. See DestinyInventoryBucketDefinition for more info.
	@JsonKey(name:'data')
	DestinyInventoryComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyInventoryComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyInventoryComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyInventoryComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyInventoryComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyInventoryComponent>((json)=>SingleComponentResponseOfDestinyInventoryComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}