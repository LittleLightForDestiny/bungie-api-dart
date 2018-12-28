import 'destiny_display_properties_definition.dart';
import 'destiny_item_socket_entry_plug_item_definition.dart';

/* Sometimes, we have large sets of reusable plugs that are defined identically and thus can (and in some cases, are so large that they *must*) be shared across the places where they are used. These are the definitions for those reusable sets of plugs. 
See DestinyItemSocketEntryDefinition.plugSource and reusablePlugSetHash for the relationship between these reusable plug sets and the sockets that leverage them (for starters, Emotes). */
class DestinyPlugSetDefinition{
	
	/* If you want to show these plugs in isolation, these are the display properties for them. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* This is a list of pre-determined plugs that can be plugged into this socket, without the character having the plug in their inventory.
If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs. */
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyPlugSetDefinition(
		this.displayProperties,
		this.reusablePlugItems,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyPlugSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugSetDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['reusablePlugItems'] != null ? DestinyItemSocketEntryPlugItemDefinition.fromList(data['reusablePlugItems']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPlugSetDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['reusablePlugItems'] = this.reusablePlugItems.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}