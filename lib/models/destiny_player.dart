import 'user_info_card.dart';
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
		UserInfoCard this.destinyUserInfo,
		String this.characterClass,
		int this.classHash,
		int this.raceHash,
		int this.genderHash,
		int this.characterLevel,
		int this.lightLevel,
		UserInfoCard this.bungieNetUserInfo,
		String this.clanName,
		String this.clanTag,
		int this.emblemHash,
	);

	static DestinyPlayer fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlayer(
				data['destinyUserInfo'],
				data['characterClass'],
				data['classHash'],
				data['raceHash'],
				data['genderHash'],
				data['characterLevel'],
				data['lightLevel'],
				data['bungieNetUserInfo'],
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
			data['destinyUserInfo'] = destinyUserInfo;
			data['characterClass'] = characterClass;
			data['classHash'] = classHash;
			data['raceHash'] = raceHash;
			data['genderHash'] = genderHash;
			data['characterLevel'] = characterLevel;
			data['lightLevel'] = lightLevel;
			data['bungieNetUserInfo'] = bungieNetUserInfo;
			data['clanName'] = clanName;
			data['clanTag'] = clanTag;
			data['emblemHash'] = emblemHash;
	}
}