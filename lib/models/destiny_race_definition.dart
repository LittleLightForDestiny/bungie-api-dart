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

	static DestinyRaceDefinition fromJson(Map<String, dynamic> data){
		return new DestinyRaceDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['raceType'],
				data['genderedRaceNames'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRaceDefinition> fromList(List<dynamic> data){
		List<DestinyRaceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRaceDefinition.fromJson(item));
    });
    return list;
	}
}