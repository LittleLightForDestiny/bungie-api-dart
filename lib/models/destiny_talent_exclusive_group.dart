class DestinyTalentExclusiveGroup{
	int groupHash;
	int loreHash;
	List<int> nodeHashes;
	List<int> opposingGroupHashes;
	List<int> opposingNodeHashes;
	DestinyTalentExclusiveGroup(
		int this.groupHash,
		int this.loreHash,
		List<int> this.nodeHashes,
		List<int> this.opposingGroupHashes,
		List<int> this.opposingNodeHashes,
	);

	static DestinyTalentExclusiveGroup fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentExclusiveGroup(
				data['groupHash'],
				data['loreHash'],
				data['nodeHashes'],
				data['opposingGroupHashes'],
				data['opposingNodeHashes'],
		);
	}

	static List<DestinyTalentExclusiveGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentExclusiveGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentExclusiveGroup.fromJson(item));
    });
    return list;
	}
}