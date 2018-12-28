
/* As of Destiny 2, nodes can exist as part of "Exclusive Groups". These differ from exclusive sets in that, within the group, many nodes can be activated. But the act of activating any node in the group will cause "opposing" nodes (nodes in groups that are not allowed to be activated at the same time as this group) to deactivate. */
class DestinyTalentExclusiveGroup{
	
	/* The identifier for this exclusive group. Only guaranteed unique within the talent grid, not globally. */
	int groupHash;
	
	/* If this group has an associated piece of lore to show next to it, this will be the identifier for that DestinyLoreDefinition. */
	int loreHash;
	
	/* A quick reference of the talent nodes that are part of this group, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) */
	List<int> nodeHashes;
	
	/* A quick reference of Groups whose nodes will be deactivated if any node in this group is activated. */
	List<int> opposingGroupHashes;
	
	/* A quick reference of Nodes that will be deactivated if any node in this group is activated, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) */
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