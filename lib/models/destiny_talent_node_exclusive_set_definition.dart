class DestinyTalentNodeExclusiveSetDefinition{
	List<int> nodeIndexes;
	DestinyTalentNodeExclusiveSetDefinition(
		List<int> this.nodeIndexes,
	);

	static DestinyTalentNodeExclusiveSetDefinition fromJson(Map<String, dynamic> data){
		return new DestinyTalentNodeExclusiveSetDefinition(
				data['nodeIndexes'],
		);
	}

	static List<DestinyTalentNodeExclusiveSetDefinition> fromList(List<dynamic> data){
		List<DestinyTalentNodeExclusiveSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeExclusiveSetDefinition.fromJson(item));
    });
    return list;
	}
}