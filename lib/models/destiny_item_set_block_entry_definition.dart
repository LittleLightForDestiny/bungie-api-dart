
/* Defines a particular entry in an ItemSet (AKA a particular Quest Step in a Quest) */
class DestinyItemSetBlockEntryDefinition{
	
	/* Used for tracking which step a user reached. These values will be populated in the user's internal state, which we expose externally as a more usable DestinyQuestStatus object. If this item has been obtained, this value will be set in trackingUnlockValueHash. */
	int trackingValue;
	
	/* This is the hash identifier for a DestinyInventoryItemDefinition representing this quest step. */
	int itemHash;
	DestinyItemSetBlockEntryDefinition(
		this.trackingValue,
		this.itemHash,
	);

	static DestinyItemSetBlockEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetBlockEntryDefinition(
				data['trackingValue'],
				data['itemHash'],
		);
	}

	static List<DestinyItemSetBlockEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSetBlockEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetBlockEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['trackingValue'] = this.trackingValue;
			data['itemHash'] = this.itemHash;
		return data;
	}
}