import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_tier_type_infusion_block.g.dart';

@JsonSerializable()
class DestinyItemTierTypeInfusionBlock{	
	DestinyItemTierTypeInfusionBlock();

	
	/// The default portion of quality that will transfer from the infuser to the infusee item. (InfuserQuality - InfuseeQuality) * baseQualityTransferRatio = base quality transferred.
	@JsonKey(name:'baseQualityTransferRatio')
	double? baseQualityTransferRatio;
	
	/// As long as InfuserQuality > InfuseeQuality, the amount of quality bestowed is guaranteed to be at least this value, even if the transferRatio would dictate that it should be less. The total amount of quality that ends up in the Infusee cannot exceed the Infuser's quality however (for instance, if you infuse a 300 item with a 301 item and the minimum quality increment is 10, the infused item will not end up with 310 quality)
	@JsonKey(name:'minimumQualityIncrement')
	int? minimumQualityIncrement;

	factory DestinyItemTierTypeInfusionBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemTierTypeInfusionBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemTierTypeInfusionBlockToJson(this);

	static Future<DestinyItemTierTypeInfusionBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemTierTypeInfusionBlock>((json)=>DestinyItemTierTypeInfusionBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}