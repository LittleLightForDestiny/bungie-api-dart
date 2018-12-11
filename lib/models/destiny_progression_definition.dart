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

	static DestinyProgressionDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionDefinition(
				DestinyProgressionDisplayPropertiesDefinition.fromJson(data['displayProperties']),
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
      list.add(DestinyProgressionDefinition.fromJson(item));
    });
    return list;
	}
}