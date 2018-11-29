class DestinyActivityGuidedBlockDefinition{
	int guidedMaxLobbySize;
	int guidedMinLobbySize;
	int guidedDisbandCount;
	DestinyActivityGuidedBlockDefinition(
		int this.guidedMaxLobbySize,
		int this.guidedMinLobbySize,
		int this.guidedDisbandCount,
	);

	static DestinyActivityGuidedBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGuidedBlockDefinition(
				data['guidedMaxLobbySize'],
				data['guidedMinLobbySize'],
				data['guidedDisbandCount'],
		);
	}

	static List<DestinyActivityGuidedBlockDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGuidedBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGuidedBlockDefinition.fromJson(item));
    });
    return list;
	}
}