class DestinyActivityInsertionPointDefinition{
	int phaseHash;
	DestinyActivityInsertionPointDefinition(
		this.phaseHash,
	);

	static DestinyActivityInsertionPointDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyActivityInsertionPointDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['phaseHash'] = this.phaseHash;
		return data;
	}
}