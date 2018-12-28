
/** An Unlock Value is an internal integer value, stored on the server and used in a variety of ways, most frequently for the gating/requirement checks that the game performs across all of its main features. They can also be used as the storage data for mapped Progressions, Objectives, and other features that require storage of variable numeric values. */
class DestinyUnlockValueDefinition{
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyUnlockValueDefinition(
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyUnlockValueDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockValueDefinition(
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyUnlockValueDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockValueDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockValueDefinition.fromMap(item));
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