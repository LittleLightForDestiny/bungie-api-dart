class DestinyActivityMatchmakingBlockDefinition{
	bool isMatchmade;
	int minParty;
	int maxParty;
	int maxPlayers;
	bool requiresGuardianOath;
	DestinyActivityMatchmakingBlockDefinition(
		bool this.isMatchmade,
		int this.minParty,
		int this.maxParty,
		int this.maxPlayers,
		bool this.requiresGuardianOath,
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
			data['isMatchmade'] = isMatchmade;
			data['minParty'] = minParty;
			data['maxParty'] = maxParty;
			data['maxPlayers'] = maxPlayers;
			data['requiresGuardianOath'] = requiresGuardianOath;
	}
}