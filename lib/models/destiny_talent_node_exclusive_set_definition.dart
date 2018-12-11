class DestinyTalentNodeExclusiveSetDefinition{
	List<int> nodeIndexes;
	DestinyTalentNodeExclusiveSetDefinition(
		List<int> this.nodeIndexes,
	);

	static DestinyTalentNodeExclusiveSetDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyTalentNodeExclusiveSetDefinition.fromJson(item));
    });
    return list;
	}
}