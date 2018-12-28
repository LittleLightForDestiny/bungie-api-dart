import 'destiny_display_properties_definition.dart';

/* In Destiny, "Races" are really more like "Species". Sort of. I mean, are the Awoken a separate species from humans? I'm not sure. But either way, they're defined here. You'll see Exo, Awoken, and Human as examples of these Species. Players will choose one for their character. */
class DestinyRaceDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* An enumeration defining the existing, known Races/Species for player characters. This value will be the enum value matching this definition. */
	int raceType;
	
	/* A localized string referring to the singular form of the Race's name when referred to in gendered form. Keyed by the DestinyGender. */
	Map<String, String> genderedRaceNames;
	
	/*  */
	Map<String, String> genderedRaceNamesByGenderHash;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyRaceDefinition(
		this.displayProperties,
		this.raceType,
		this.genderedRaceNames,
		this.genderedRaceNamesByGenderHash,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyRaceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRaceDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['raceType'],
				data['genderedRaceNames'] != null ? Map<String, String>.from(data['genderedRaceNames'].map((k, v)=>MapEntry(k, v))) : null,
				data['genderedRaceNamesByGenderHash'] != null ? Map<String, String>.from(data['genderedRaceNamesByGenderHash'].map((k, v)=>MapEntry(k, v))) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRaceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRaceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRaceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['raceType'] = this.raceType;
			data['genderedRaceNames'] = this.genderedRaceNames;
			data['genderedRaceNamesByGenderHash'] = this.genderedRaceNamesByGenderHash;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}