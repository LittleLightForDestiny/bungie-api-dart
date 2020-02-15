import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_sale_item_action_block_definition.g.dart';

/// Not terribly useful, some basic cooldown interaction info.
@JsonSerializable()
class DestinyVendorSaleItemActionBlockDefinition{
	
	DestinyVendorSaleItemActionBlockDefinition();

	factory DestinyVendorSaleItemActionBlockDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyVendorSaleItemActionBlockDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'executeSeconds')
	double executeSeconds;
	@JsonKey(name:'isPositive')
	bool isPositive;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemActionBlockDefinitionToJson(this);
}