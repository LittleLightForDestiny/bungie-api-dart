
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_quantity.g.dart';

/// Used in a number of Destiny contracts to return data about an item stack and its quantity. Can optionally return an itemInstanceId if the item is instanced - in which case, the quantity returned will be 1. If it&#39;s not... uh, let me know okay? Thanks.
@JsonSerializable()
class DestinyItemQuantity {

	/// The hash identifier for the item in question. Use it to look up the item&#39;s DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If this quantity is referring to a specific instance of an item, this will have the item&#39;s instance ID. Normally, this will be null.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// The amount of the item needed&#x2F;available depending on the context of where DestinyItemQuantity is being used.
	@JsonKey(name:'quantity')
	int quantity;
	DestinyItemQuantity();

	factory DestinyItemQuantity.fromJson(Map<String, dynamic> json) => _$DestinyItemQuantityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemQuantityToJson(this);
}
