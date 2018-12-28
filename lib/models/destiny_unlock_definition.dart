import 'destiny_display_properties_definition.dart';

/** Unlock Flags are small bits (literally, a bit, as in a boolean value) that the game server uses for an extremely wide range of state checks, progress storage, and other interesting tidbits of information. */
class DestinyUnlockDefinition{
	
	/** Sometimes, but not frequently, these unlock flags also have human readable information: usually when they are being directly tested for some requirement, in which case the string is a localized description of why the requirement check failed. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyUnlockDefinition(
		this.displayProperties,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyUnlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyUnlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}