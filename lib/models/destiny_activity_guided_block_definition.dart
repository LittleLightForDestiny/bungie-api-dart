class DestinyActivityGuidedBlockDefinition{
	int guidedMaxLobbySize;
	int guidedMinLobbySize;
	int guidedDisbandCount;
	DestinyActivityGuidedBlockDefinition(
		int this.guidedMaxLobbySize,
		int this.guidedMinLobbySize,
		int this.guidedDisbandCount,
	);

	static DestinyActivityGuidedBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGuidedBlockDefinition(
				data['guidedMaxLobbySize'],
				data['guidedMinLobbySize'],
				data['guidedDisbandCount'],
		);
	}

	static List<DestinyActivityGuidedBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGuidedBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGuidedBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['guidedMaxLobbySize'] = this.guidedMaxLobbySize;
			data['guidedMinLobbySize'] = this.guidedMinLobbySize;
			data['guidedDisbandCount'] = this.guidedDisbandCount;
		return data;
	}
}