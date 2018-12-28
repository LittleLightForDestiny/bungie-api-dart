import 'user_info_card.dart';

/**  */
class DestinyPlayer{
	
	/** Details about the player as they are known in game (platform display name, Destiny emblem) */
	UserInfoCard destinyUserInfo;
	
	/** Class of the character if applicable and available. */
	String characterClass;
	
	/**  */
	int classHash;
	
	/**  */
	int raceHash;
	
	/**  */
	int genderHash;
	
	/** Level of the character if available. Zero if it is not available. */
	int characterLevel;
	
	/** Light Level of the character if available. Zero if it is not available. */
	int lightLevel;
	
	/** Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account. */
	UserInfoCard bungieNetUserInfo;
	
	/** Current clan name for the player. This value may be null or an empty string if the user does not have a clan. */
	String clanName;
	
	/** Current clan tag for the player. This value may be null or an empty string if the user does not have a clan. */
	String clanTag;
	
	/** If we know the emblem's hash, this can be used to look up the player's emblem at the time of a match when receiving PGCR data, or otherwise their currently equipped emblem (if we are able to obtain it). */
	int emblemHash;
	DestinyPlayer(
		this.destinyUserInfo,
		this.characterClass,
		this.classHash,
		this.raceHash,
		this.genderHash,
		this.characterLevel,
		this.lightLevel,
		this.bungieNetUserInfo,
		this.clanName,
		this.clanTag,
		this.emblemHash,
	);

	static DestinyPlayer fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlayer(
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['characterClass'],
				data['classHash'],
				data['raceHash'],
				data['genderHash'],
				data['characterLevel'],
				data['lightLevel'],
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
				data['clanName'],
				data['clanTag'],
				data['emblemHash'],
		);
	}

	static List<DestinyPlayer> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlayer> list = new List();
    data.forEach((item) {
      list.add(DestinyPlayer.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['destinyUserInfo'] = this.destinyUserInfo;
			data['characterClass'] = this.characterClass;
			data['classHash'] = this.classHash;
			data['raceHash'] = this.raceHash;
			data['genderHash'] = this.genderHash;
			data['characterLevel'] = this.characterLevel;
			data['lightLevel'] = this.lightLevel;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo;
			data['clanName'] = this.clanName;
			data['clanTag'] = this.clanTag;
			data['emblemHash'] = this.emblemHash;
		return data;
	}
}