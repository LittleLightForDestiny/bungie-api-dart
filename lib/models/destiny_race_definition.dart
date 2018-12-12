import 'destiny_display_properties_definition.dart';
class DestinyRaceDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int raceType;
	Map<String, dynamic> genderedRaceNames;
	int hash;
	int index;
	bool redacted;
	DestinyRaceDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.raceType,
		Map<String, dynamic> this.genderedRaceNames,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyRaceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRaceDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['raceType'],
				data['genderedRaceNames'],
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
			data['displayProperties'] = displayProperties.toMap();
			data['raceType'] = raceType;
			data['genderedRaceNames'] = genderedRaceNames;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}