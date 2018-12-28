
/* Guided Game information for this activity. */
class DestinyActivityGuidedBlockDefinition{
	
	/* The maximum amount of people that can be in the waiting lobby. */
	int guidedMaxLobbySize;
	
	/* The minimum amount of people that can be in the waiting lobby. */
	int guidedMinLobbySize;
	
	/* If -1, the guided group cannot be disbanded. Otherwise, take the total # of players in the activity and subtract this number: that is the total # of votes needed for the guided group to disband. */
	int guidedDisbandCount;
	DestinyActivityGuidedBlockDefinition(
		this.guidedMaxLobbySize,
		this.guidedMinLobbySize,
		this.guidedDisbandCount,
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