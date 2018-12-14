class DestinyPlugWhitelistEntryDefinition{
	int categoryHash;
	String categoryIdentifier;
	List<int> reinitializationPossiblePlugHashes;
	DestinyPlugWhitelistEntryDefinition(
		this.categoryHash,
		this.categoryIdentifier,
		this.reinitializationPossiblePlugHashes,
	);

	static DestinyPlugWhitelistEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugWhitelistEntryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['reinitializationPossiblePlugHashes'] != null ? data['reinitializationPossiblePlugHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyPlugWhitelistEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugWhitelistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugWhitelistEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryHash'] = this.categoryHash;
			data['categoryIdentifier'] = this.categoryIdentifier;
			data['reinitializationPossiblePlugHashes'] = this.reinitializationPossiblePlugHashes;
		return data;
	}
}