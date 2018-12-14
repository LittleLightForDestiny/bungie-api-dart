class DestinyActivityMatchmakingBlockDefinition{
	bool isMatchmade;
	int minParty;
	int maxParty;
	int maxPlayers;
	bool requiresGuardianOath;
	DestinyActivityMatchmakingBlockDefinition(
		this.isMatchmade,
		this.minParty,
		this.maxParty,
		this.maxPlayers,
		this.requiresGuardianOath,
	);

	static DestinyActivityMatchmakingBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityMatchmakingBlockDefinition(
				data['isMatchmade'],
				data['minParty'],
				data['maxParty'],
				data['maxPlayers'],
				data['requiresGuardianOath'],
		);
	}

	static List<DestinyActivityMatchmakingBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityMatchmakingBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityMatchmakingBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['isMatchmade'] = this.isMatchmade;
			data['minParty'] = this.minParty;
			data['maxParty'] = this.maxParty;
			data['maxPlayers'] = this.maxPlayers;
			data['requiresGuardianOath'] = this.requiresGuardianOath;
		return data;
	}
}