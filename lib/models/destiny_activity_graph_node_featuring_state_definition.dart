class DestinyActivityGraphNodeFeaturingStateDefinition{
	int highlightType;
	DestinyActivityGraphNodeFeaturingStateDefinition(
		int this.highlightType,
	);

	static DestinyActivityGraphNodeFeaturingStateDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphNodeFeaturingStateDefinition(
				data['highlightType'],
		);
	}

	static List<DestinyActivityGraphNodeFeaturingStateDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGraphNodeFeaturingStateDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeFeaturingStateDefinition.fromJson(item));
    });
    return list;
	}
}