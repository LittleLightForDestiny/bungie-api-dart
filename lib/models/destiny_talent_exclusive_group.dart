class DestinyTalentExclusiveGroup{
	int groupHash;
	int loreHash;
	List<int> nodeHashes;
	List<int> opposingGroupHashes;
	List<int> opposingNodeHashes;
	DestinyTalentExclusiveGroup(
		this.groupHash,
		this.loreHash,
		this.nodeHashes,
		this.opposingGroupHashes,
		this.opposingNodeHashes,
	);

	static DestinyTalentExclusiveGroup fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentExclusiveGroup(
				data['groupHash'],
				data['loreHash'],
				data['nodeHashes'] != null ? data['nodeHashes']?.cast<int>() ?? null : null,
				data['opposingGroupHashes'] != null ? data['opposingGroupHashes']?.cast<int>() ?? null : null,
				data['opposingNodeHashes'] != null ? data['opposingNodeHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyTalentExclusiveGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentExclusiveGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentExclusiveGroup.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupHash'] = this.groupHash;
			data['loreHash'] = this.loreHash;
			data['nodeHashes'] = this.nodeHashes;
			data['opposingGroupHashes'] = this.opposingGroupHashes;
			data['opposingNodeHashes'] = this.opposingNodeHashes;
		return data;
	}
}