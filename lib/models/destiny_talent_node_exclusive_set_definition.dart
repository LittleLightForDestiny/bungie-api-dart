
/* The list of indexes into the Talent Grid's "nodes" property for nodes in this exclusive set. (See DestinyTalentNodeDefinition.nodeIndex) */
class DestinyTalentNodeExclusiveSetDefinition{
	
	/* The list of node indexes for the exclusive set. Historically, these were indexes. I would have liked to replace this with nodeHashes for consistency, but it's way too late for that. (9:09 PM, he's right!) */
	List<int> nodeIndexes;
	DestinyTalentNodeExclusiveSetDefinition(
		this.nodeIndexes,
	);

	static DestinyTalentNodeExclusiveSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeExclusiveSetDefinition(
				data['nodeIndexes'] != null ? data['nodeIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyTalentNodeExclusiveSetDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeExclusiveSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeExclusiveSetDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeIndexes'] = this.nodeIndexes;
		return data;
	}
}