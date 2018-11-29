class DestinyActivityGraphDisplayProgressionDefinition{
	int id;
	int progressionHash;
	DestinyActivityGraphDisplayProgressionDefinition(
		int this.id,
		int this.progressionHash,
	);

	static DestinyActivityGraphDisplayProgressionDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphDisplayProgressionDefinition(
				data['id'],
				data['progressionHash'],
		);
	}

	static List<DestinyActivityGraphDisplayProgressionDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGraphDisplayProgressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDisplayProgressionDefinition.fromJson(item));
    });
    return list;
	}
}