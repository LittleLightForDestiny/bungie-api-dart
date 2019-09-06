
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_sale_item_action_block_definition.g.dart';

/// Not terribly useful, some basic cooldown interaction info.
@JsonSerializable()
class DestinyVendorSaleItemActionBlockDefinition {

	@JsonKey(name:'executeSeconds')
	double executeSeconds;

	@JsonKey(name:'isPositive')
	bool isPositive;
	DestinyVendorSaleItemActionBlockDefinition();

	factory DestinyVendorSaleItemActionBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorSaleItemActionBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemActionBlockDefinitionToJson(this);
}
