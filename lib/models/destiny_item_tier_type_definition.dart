import 'destiny_display_properties_definition.dart';
import 'destiny_item_tier_type_infusion_block.dart';

/** Defines the tier type of an item. Mostly this provides human readable properties for types like Common, Rare, etc...
It also provides some base data for infusion that could be useful. */
class DestinyItemTierTypeDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** If this tier defines infusion properties, they will be contained here. */
	DestinyItemTierTypeInfusionBlock infusionProcess;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
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
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['infusionProcess'] = this.infusionProcess != null? this.infusionProcess.toMap() : null;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}