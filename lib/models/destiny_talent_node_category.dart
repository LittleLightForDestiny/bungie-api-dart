import 'destiny_display_properties_definition.dart';

/* An artificial construct provided by Bungie.Net, where we attempt to group talent nodes by functionality.
This is a single set of references to Talent Nodes that share a common trait or purpose. */
class DestinyTalentNodeCategory{
	
	/* Mostly just for debug purposes, but if you find it useful you can have it. This is BNet's manually created identifier for this category. */
	String identifier;
	
	/* If true, we found the localized content in a related DestinyLoreDefinition instead of local BNet localization files. This is mostly for ease of my own future investigations. */
	bool isLoreDriven;
	
	/* Will contain at least the "name", which will be the title of the category. We will likely not have description and an icon yet, but I'm going to keep my options open. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* The set of all hash identifiers for Talent Nodes (DestinyTalentNodeDefinition) in this Talent Grid that are part of this Category. */
	List<int> nodeHashes;
	DestinyTalentNodeCategory(
		this.identifier,
		this.isLoreDriven,
		this.displayProperties,
		this.nodeHashes,
	);

	static DestinyTalentNodeCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeCategory(
				data['identifier'],
				data['isLoreDriven'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['nodeHashes'] != null ? data['nodeHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyTalentNodeCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = this.identifier;
			data['isLoreDriven'] = this.isLoreDriven;
			data['displayProperties'] = this.displayProperties;
			data['nodeHashes'] = this.nodeHashes;
		return data;
	}
}