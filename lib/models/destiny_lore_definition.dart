import 'destiny_display_properties_definition.dart';

/** These are definitions for in-game "Lore," meant to be narrative enhancements of the game experience.
DestinyInventoryItemDefinitions for interesting items point to these definitions, but nothing's stopping you from scraping all of these and doing something cool with them. If they end up having cool data. */
class DestinyLoreDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/**  */
	String subtitle;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyLoreDefinition(
		this.displayProperties,
		this.subtitle,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyLoreDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLoreDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['subtitle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLoreDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLoreDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLoreDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['subtitle'] = this.subtitle;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}