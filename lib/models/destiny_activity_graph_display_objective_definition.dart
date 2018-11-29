class DestinyActivityGraphDisplayObjectiveDefinition{
	int id;
	int objectiveHash;
	DestinyActivityGraphDisplayObjectiveDefinition(
		int this.id,
		int this.objectiveHash,
	);

	static DestinyActivityGraphDisplayObjectiveDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphDisplayObjectiveDefinition(
				data['id'],
				data['objectiveHash'],
		);
	}

	static List<DestinyActivityGraphDisplayObjectiveDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGraphDisplayObjectiveDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDisplayObjectiveDefinition.fromJson(item));
    });
    return list;
	}
}