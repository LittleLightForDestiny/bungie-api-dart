
/* Information about matchmaking and party size for the activity. */
class DestinyActivityMatchmakingBlockDefinition{
	
	/* If TRUE, the activity is matchmade. Otherwise, it requires explicit forming of a party. */
	bool isMatchmade;
	
	/* The minimum # of people in the fireteam for the activity to launch. */
	int minParty;
	
	/* The maximum # of people allowed in a Fireteam. */
	int maxParty;
	
	/* The maximum # of people allowed across all teams in the activity. */
	int maxPlayers;
	
	/* If true, you have to Solemnly Swear to be up to Nothing But Good(tm) to play. */
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