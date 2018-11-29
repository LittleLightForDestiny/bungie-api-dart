class DestinyPlugWhitelistEntryDefinition{
	int categoryHash;
	String categoryIdentifier;
	List<int> reinitializationPossiblePlugHashes;
	DestinyPlugWhitelistEntryDefinition(
		int this.categoryHash,
		String this.categoryIdentifier,
		List<int> this.reinitializationPossiblePlugHashes,
	);

	static DestinyPlugWhitelistEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyPlugWhitelistEntryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['reinitializationPossiblePlugHashes'],
		);
	}

	static List<DestinyPlugWhitelistEntryDefinition> fromList(List<dynamic> data){
		List<DestinyPlugWhitelistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugWhitelistEntryDefinition.fromJson(item));
    });
    return list;
	}
}