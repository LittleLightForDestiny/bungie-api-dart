
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_item_quantity.g.dart';

/// In addition to item quantity information for vendor prices, this also has any optional information that may exist about how the item&#39;s quantity can be modified. (unfortunately not information that is able to be read outside of the BNet servers, but it&#39;s there)
@JsonSerializable()
class DestinyVendorItemQuantity {

	/// The hash identifier for the item in question. Use it to look up the item&#39;s DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If this quantity is referring to a specific instance of an item, this will have the item&#39;s instance ID. Normally, this will be null.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// The amount of the item needed&#x2F;available depending on the context of where DestinyItemQuantity is being used.
	@JsonKey(name:'quantity')
	int quantity;
	DestinyVendorItemQuantity();

	factory DestinyVendorItemQuantity.fromJson(Map<String, dynamic> json) => _$DestinyVendorItemQuantityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorItemQuantityToJson(this);
}
