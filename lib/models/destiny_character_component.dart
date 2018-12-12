import 'destiny_color.dart';
import 'destiny_progression.dart';
class DestinyCharacterComponent{
	int membershipId;
	int membershipType;
	int characterId;
	String dateLastPlayed;
	int minutesPlayedThisSession;
	int minutesPlayedTotal;
	int light;
	Map<int, dynamic> stats;
	int raceHash;
	int genderHash;
	int classHash;
	int raceType;
	int classType;
	int genderType;
	String emblemPath;
	String emblemBackgroundPath;
	int emblemHash;
	DestinyColor emblemColor;
	DestinyProgression levelProgression;
	int baseCharacterLevel;
	int percentToNextLevel;
	int titleRecordHash;
	DestinyCharacterComponent(
		int this.membershipId,
		int this.membershipType,
		int this.characterId,
		String this.dateLastPlayed,
		int this.minutesPlayedThisSession,
		int this.minutesPlayedTotal,
		int this.light,
		Map<int, dynamic> this.stats,
		int this.raceHash,
		int this.genderHash,
		int this.classHash,
		int this.raceType,
		int this.classType,
		int this.genderType,
		String this.emblemPath,
		String this.emblemBackgroundPath,
		int this.emblemHash,
		DestinyColor this.emblemColor,
		DestinyProgression this.levelProgression,
		int this.baseCharacterLevel,
		int this.percentToNextLevel,
		int this.titleRecordHash,
	);

	static DestinyCharacterComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterComponent(
				data['membershipId'],
				data['membershipType'],
				data['characterId'],
				data['dateLastPlayed'],
				data['minutesPlayedThisSession'],
				data['minutesPlayedTotal'],
				data['light'],
				data['stats'],
				data['raceHash'],
				data['genderHash'],
				data['classHash'],
				data['raceType'],
				data['classType'],
				data['genderType'],
				data['emblemPath'],
				data['emblemBackgroundPath'],
				data['emblemHash'],
				data['emblemColor'],
				data['levelProgression'],
				data['baseCharacterLevel'],
				data['percentToNextLevel'],
				data['titleRecordHash'],
		);
	}

	static List<DestinyCharacterComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['membershipId'] = membershipId;
			data['membershipType'] = membershipType;
			data['characterId'] = characterId;
			data['dateLastPlayed'] = dateLastPlayed;
			data['minutesPlayedThisSession'] = minutesPlayedThisSession;
			data['minutesPlayedTotal'] = minutesPlayedTotal;
			data['light'] = light;
			data['stats'] = stats;
			data['raceHash'] = raceHash;
			data['genderHash'] = genderHash;
			data['classHash'] = classHash;
			data['raceType'] = raceType;
			data['classType'] = classType;
			data['genderType'] = genderType;
			data['emblemPath'] = emblemPath;
			data['emblemBackgroundPath'] = emblemBackgroundPath;
			data['emblemHash'] = emblemHash;
			data['emblemColor'] = emblemColor;
			data['levelProgression'] = levelProgression;
			data['baseCharacterLevel'] = baseCharacterLevel;
			data['percentToNextLevel'] = percentToNextLevel;
			data['titleRecordHash'] = titleRecordHash;
	}
}