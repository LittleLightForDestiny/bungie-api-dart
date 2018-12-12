class DestinyTalentNodeExclusiveSetDefinition{
	List<int> nodeIndexes;
	DestinyTalentNodeExclusiveSetDefinition(
		List<int> this.nodeIndexes,
	);

	static DestinyTalentNodeExclusiveSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeExclusiveSetDefinition(
				data['nodeIndexes'],
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