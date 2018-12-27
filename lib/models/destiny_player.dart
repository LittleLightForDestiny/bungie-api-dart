import 'user_info_card.dart';
class DestinyPlayer{
	UserInfoCard destinyUserInfo;
	String characterClass;
	int classHash;
	int raceHash;
	int genderHash;
	int characterLevel;
	int lightLevel;
	UserInfoCard bungieNetUserInfo;
	String clanName;
	String clanTag;
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