
/** Provides common properties for destiny definitions. */
class DestinyDefinition{
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyDefinition(
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDefinition(
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}