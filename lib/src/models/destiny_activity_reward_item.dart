import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_quantity.dart';

part 'destiny_activity_reward_item.g.dart';

@JsonSerializable()
class DestinyActivityRewardItem{	
	DestinyActivityRewardItem();

	
	/// Used in a number of Destiny contracts to return data about an item stack and its quantity. Can optionally return an itemInstanceId if the item is instanced - in which case, the quantity returned will be 1. If it's not... uh, let me know okay? Thanks.
	@JsonKey(name:'itemQuantity')
	DestinyItemQuantity? itemQuantity;
	
	@JsonKey(name:'uiStyle')
	String? uiStyle;

	factory DestinyActivityRewardItem.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityRewardItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityRewardItemToJson(this);

	static Future<DestinyActivityRewardItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityRewardItem>((json)=>DestinyActivityRewardItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}