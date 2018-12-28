import 'destiny_display_properties_definition.dart';

/* All damage types that are possible in the game are defined here, along with localized info and icons as needed. */
class DestinyDamageTypeDefinition{
	
	/* The description of the damage type, icon etc... */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* A variant of the icon that is transparent and colorless. */
	String transparentIconPath;
	
	/* If TRUE, the game shows this damage type's icon. Otherwise, it doesn't. Whether you show it or not is up to you. */
	bool showIcon;
	
	/* We have an enumeration for damage types for quick reference. This is the current definition's damage type enum value. */
	int enumValue;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyDamageTypeDefinition(
		this.displayProperties,
		this.transparentIconPath,
		this.showIcon,
		this.enumValue,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyDamageTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDamageTypeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['transparentIconPath'],
				data['showIcon'],
				data['enumValue'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDamageTypeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDamageTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDamageTypeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['transparentIconPath'] = this.transparentIconPath;
			data['showIcon'] = this.showIcon;
			data['enumValue'] = this.enumValue;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}