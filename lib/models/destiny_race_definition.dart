import 'destiny_display_properties_definition.dart';
class DestinyRaceDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int raceType;
	Map<String, String> genderedRaceNames;
	Map<String, String> genderedRaceNamesByGenderHash;
	int hash;
	int index;
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