import 'destiny_display_properties_definition.dart';
import 'destiny_item_tier_type_infusion_block.dart';
class DestinyItemTierTypeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyItemTierTypeInfusionBlock infusionProcess;
	int hash;
	int index;
	bool redacted;
	DestinyItemTierTypeDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		DestinyItemTierTypeInfusionBlock this.infusionProcess,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyItemTierTypeDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTierTypeDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['infusionProcess'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyItemTierTypeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTierTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTierTypeDefinition.fromJson(item));
    });
    return list;
	}
}