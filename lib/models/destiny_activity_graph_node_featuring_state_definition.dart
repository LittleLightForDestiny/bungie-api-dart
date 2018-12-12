class DestinyActivityGraphNodeFeaturingStateDefinition{
	int highlightType;
	DestinyActivityGraphNodeFeaturingStateDefinition(
		int this.highlightType,
	);

	static DestinyActivityGraphNodeFeaturingStateDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeFeaturingStateDefinition(
				data['highlightType'],
		);
	}

	static List<DestinyActivityGraphNodeFeaturingStateDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeFeaturingStateDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeFeaturingStateDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['highlightType'] = this.highlightType;
		return data;
	}
}