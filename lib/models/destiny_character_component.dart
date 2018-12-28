import 'destiny_color.dart';
import 'destiny_progression.dart';

/* This component contains base properties of the character. You'll probably want to always request this component, but hey you do you. */
class DestinyCharacterComponent{
	
	/* Every Destiny Profile has a membershipId. This is provided on the character as well for convenience. */
	String membershipId;
	
	/* membershipType tells you the platform on which the character plays. Examine the BungieMembershipType enumeration for possible values. */
	int membershipType;
	
	/* The unique identifier for the character. */
	String characterId;
	
	/* The last date that the user played Destiny. */
	String dateLastPlayed;
	
	/* If the user is currently playing, this is how long they've been playing. */
	String minutesPlayedThisSession;
	
	/* If this value is 525,600, then they played Destiny for a year. Or they're a very dedicated Rent fan. Note that this includes idle time, not just time spent actually in activities shooting things. */
	String minutesPlayedTotal;
	
	/* The user's calculated "Light Level". Light level is an indicator of your power that mostly matters in the end game, once you've reached the maximum character level: it's a level that's dependent on the average Attack/Defense power of your items. */
	int light;
	
	/* Your character's stats, such as Agility, Resilience, etc... *not* historical stats.
You'll have to call a different endpoint for those. */
	Map<String, int> stats;
	
	/* Use this hash to look up the character's DestinyRaceDefinition. */
	int raceHash;
	
	/* Use this hash to look up the character's DestinyGenderDefinition. */
	int genderHash;
	
	/* Use this hash to look up the character's DestinyClassDefinition. */
	int classHash;
	
	/* Mostly for historical purposes at this point, this is an enumeration for the character's race.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
	int raceType;
	
	/* Mostly for historical purposes at this point, this is an enumeration for the character's class.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
	int classType;
	
	/* Mostly for historical purposes at this point, this is an enumeration for the character's Gender.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. And yeah, it's an enumeration and not a boolean. Fight me. */
	int genderType;
	
	/* A shortcut path to the user's currently equipped emblem image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
	String emblemPath;
	
	/* A shortcut path to the user's currently equipped emblem background image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
	String emblemBackgroundPath;
	
	/* The hash of the currently equipped emblem for the user. Can be used to look up the DestinyInventoryItemDefinition. */
	int emblemHash;
	
	/* A shortcut for getting the background color of the user's currently equipped emblem without having to do a DestinyInventoryItemDefinition lookup. */
	DestinyColor emblemColor;
	
	/* The progression that indicates your character's level. Not their light level, but their character level: you know, the thing you max out a couple hours in and then ignore for the sake of light level. */
	DestinyProgression levelProgression;
	
	/* The "base" level of your character, not accounting for any light level. */
	int baseCharacterLevel;
	
	/* A number between 0 and 100, indicating the whole and fractional % remaining to get to the next character level. */
	double percentToNextLevel;
	
	/* If this Character has a title assigned to it, this is the identifier of the DestinyRecordDefinition that has that title information. */
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