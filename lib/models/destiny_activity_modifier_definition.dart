import 'destiny_display_properties_definition.dart';

/* Modifiers - in Destiny 1, these were referred to as "Skulls" - are changes that can be applied to an Activity. */
class DestinyActivityModifierDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyActivityModifierDefinition(
		this.displayProperties,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyActivityModifierDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityModifierDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityModifierDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityModifierDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModifierDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}