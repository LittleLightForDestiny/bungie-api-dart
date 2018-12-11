class DestinyActivityGraphNodeFeaturingStateDefinition{
	int highlightType;
	DestinyActivityGraphNodeFeaturingStateDefinition(
		int this.highlightType,
	);

	static DestinyActivityGraphNodeFeaturingStateDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyActivityGraphNodeFeaturingStateDefinition.fromJson(item));
    });
    return list;
	}
}