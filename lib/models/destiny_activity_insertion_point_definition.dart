class DestinyActivityInsertionPointDefinition{
	int phaseHash;
	DestinyActivityInsertionPointDefinition(
		int this.phaseHash,
	);

	static DestinyActivityInsertionPointDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityInsertionPointDefinition(
				data['phaseHash'],
		);
	}

	static List<DestinyActivityInsertionPointDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityInsertionPointDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityInsertionPointDefinition.fromJson(item));
    });
    return list;
	}
}