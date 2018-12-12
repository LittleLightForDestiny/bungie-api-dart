import 'destiny_progression_display_properties_definition.dart';
import 'destiny_progression_step_definition.dart';
class DestinyProgressionDefinition{
	DestinyProgressionDisplayPropertiesDefinition displayProperties;
	int scope;
	bool repeatLastStep;
	String source;
	List<DestinyProgressionStepDefinition> steps;
	bool visible;
	int factionHash;
	int hash;
	int index;
	bool redacted;
	DestinyProgressionDefinition(
		DestinyProgressionDisplayPropertiesDefinition this.displayProperties,
		int this.scope,
		bool this.repeatLastStep,
		String this.source,
		List<DestinyProgressionStepDefinition> this.steps,
		bool this.visible,
		int this.factionHash,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyProgressionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionDefinition(
				DestinyProgressionDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['scope'],
				data['repeatLastStep'],
				data['source'],
				DestinyProgressionStepDefinition.fromList(data['steps']),
				data['visible'],
				data['factionHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyProgressionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['scope'] = scope;
			data['repeatLastStep'] = repeatLastStep;
			data['source'] = source;
			data['steps'] = steps.map((item)=>item.toMap());
			data['visible'] = visible;
			data['factionHash'] = factionHash;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}