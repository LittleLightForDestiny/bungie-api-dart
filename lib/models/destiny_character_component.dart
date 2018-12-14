import 'destiny_color.dart';
import 'destiny_progression.dart';
class DestinyCharacterComponent{
	String membershipId;
	int membershipType;
	String characterId;
	String dateLastPlayed;
	String minutesPlayedThisSession;
	String minutesPlayedTotal;
	int light;
	Map<String, int> stats;
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
	double percentToNextLevel;
	int titleRecordHash;
	DestinyCharacterComponent(
		this.membershipId,
		this.membershipType,
		this.characterId,
		this.dateLastPlayed,
		this.minutesPlayedThisSession,
		this.minutesPlayedTotal,
		this.light,
		this.stats,
		this.raceHash,
		this.genderHash,
		this.classHash,
		this.raceType,
		this.classType,
		this.genderType,
		this.emblemPath,
		this.emblemBackgroundPath,
		this.emblemHash,
		this.emblemColor,
		this.levelProgression,
		this.baseCharacterLevel,
		this.percentToNextLevel,
		this.titleRecordHash,
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
				data['stats'] != null ? Map<String, int>.from(data['stats'].map((k, v)=>MapEntry(k, v))) : null,
				data['raceHash'],
				data['genderHash'],
				data['classHash'],
				data['raceType'],
				data['classType'],
				data['genderType'],
				data['emblemPath'],
				data['emblemBackgroundPath'],
				data['emblemHash'],
				data['emblemColor'] != null ? DestinyColor.fromMap(data['emblemColor']) : null,
				data['levelProgression'] != null ? DestinyProgression.fromMap(data['levelProgression']) : null,
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
			data['membershipId'] = this.membershipId;
			data['membershipType'] = this.membershipType;
			data['characterId'] = this.characterId;
			data['dateLastPlayed'] = this.dateLastPlayed;
			data['minutesPlayedThisSession'] = this.minutesPlayedThisSession;
			data['minutesPlayedTotal'] = this.minutesPlayedTotal;
			data['light'] = this.light;
			data['stats'] = this.stats;
			data['raceHash'] = this.raceHash;
			data['genderHash'] = this.genderHash;
			data['classHash'] = this.classHash;
			data['raceType'] = this.raceType;
			data['classType'] = this.classType;
			data['genderType'] = this.genderType;
			data['emblemPath'] = this.emblemPath;
			data['emblemBackgroundPath'] = this.emblemBackgroundPath;
			data['emblemHash'] = this.emblemHash;
			data['emblemColor'] = this.emblemColor;
			data['levelProgression'] = this.levelProgression;
			data['baseCharacterLevel'] = this.baseCharacterLevel;
			data['percentToNextLevel'] = this.percentToNextLevel;
			data['titleRecordHash'] = this.titleRecordHash;
		return data;
	}
}