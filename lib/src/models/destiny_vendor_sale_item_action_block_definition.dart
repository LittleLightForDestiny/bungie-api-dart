import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_sale_item_action_block_definition.g.dart';

/// Not terribly useful, some basic cooldown interaction info.
@JsonSerializable()
class DestinyVendorSaleItemActionBlockDefinition{	
	DestinyVendorSaleItemActionBlockDefinition();

	
	@JsonKey(name:'executeSeconds')
	double? executeSeconds;
	
	@JsonKey(name:'isPositive')
	bool? isPositive;

	factory DestinyVendorSaleItemActionBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorSaleItemActionBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemActionBlockDefinitionToJson(this);

	static Future<DestinyVendorSaleItemActionBlockDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorSaleItemActionBlockDefinition>((json)=>DestinyVendorSaleItemActionBlockDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}