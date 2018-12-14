import 'destiny_display_properties_definition.dart';
import 'destiny_item_tier_type_infusion_block.dart';
class DestinyItemTierTypeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyItemTierTypeInfusionBlock infusionProcess;
	int hash;
	int index;
	bool redacted;
	DestinyItemTierTypeDefinition(
		this.displayProperties,
		this.infusionProcess,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyItemTierTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTierTypeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['infusionProcess'] != null ? DestinyItemTierTypeInfusionBlock.fromMap(data['infusionProcess']) : null,
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
      list.add(DestinyItemTierTypeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['infusionProcess'] = this.infusionProcess;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}