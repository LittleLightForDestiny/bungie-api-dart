import 'destiny_display_properties_definition.dart';
import 'destiny_vendor_inventory_flyout_bucket_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_inventory_flyout_definition.g.dart';

/// The definition for an &quot;inventory flyout&quot;: a UI screen where we show you part of an otherwise hidden vendor inventory: like the Vault inventory buckets.
@JsonSerializable()
class DestinyVendorInventoryFlyoutDefinition {

	/// If the flyout is locked, this is the reason why.
	@JsonKey(name:'lockedDescription')
	String lockedDescription;

	/// The title and other common properties of the flyout.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// A list of inventory buckets and other metadata to show on the screen.
	@JsonKey(name:'buckets')
	List<DestinyVendorInventoryFlyoutBucketDefinition> buckets;

	/// An identifier for the flyout, in case anything else needs to refer to them.
	@JsonKey(name:'flyoutId')
	int flyoutId;

	/// If this is true, don&#39;t show any of the glistening &quot;this is a new item&quot; UI elements, like we show on the inventory items themselves in in-game UI.
	@JsonKey(name:'suppressNewness')
	bool suppressNewness;

	/// If this flyout is meant to show you the contents of the player&#39;s equipment slot, this is the slot to show.
	@JsonKey(name:'equipmentSlotHash')
	int equipmentSlotHash;
	DestinyVendorInventoryFlyoutDefinition();

	factory DestinyVendorInventoryFlyoutDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorInventoryFlyoutDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorInventoryFlyoutDefinitionToJson(this);
}
