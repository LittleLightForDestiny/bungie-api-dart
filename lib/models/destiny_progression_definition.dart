import 'destiny_progression_display_properties_definition.dart';
import 'destiny_progression_step_definition.dart';
import 'destiny_color.dart';
class DestinyProgressionDefinition{
	DestinyProgressionDisplayPropertiesDefinition displayProperties;
	int scope;
	bool repeatLastStep;
	String source;
	List<DestinyProgressionStepDefinition> steps;
	bool visible;
	int factionHash;
	DestinyColor color;
	String rankIcon;
	int hash;
	int index;
	bool redacted;
	DestinyProgressionDefinition(
		this.displayProperties,
		this.scope,
		this.repeatLastStep,
		this.source,
		this.steps,
		this.visible,
		this.factionHash,
		this.color,
		this.rankIcon,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyProgressionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionDefinition(
				data['displayProperties'] != null ? DestinyProgressionDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['scope'],
				data['repeatLastStep'],
				data['source'],
				data['steps'] != null ? DestinyProgressionStepDefinition.fromList(data['steps']) : null,
				data['visible'],
				data['factionHash'],
				data['color'] != null ? DestinyColor.fromMap(data['color']) : null,
				data['rankIcon'],
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
			data['displayProperties'] = this.displayProperties.toMap();
			data['scope'] = this.scope;
			data['repeatLastStep'] = this.repeatLastStep;
			data['source'] = this.source;
			data['steps'] = this.steps.map((item)=>item.toMap()).toList();
			data['visible'] = this.visible;
			data['factionHash'] = this.factionHash;
			data['color'] = this.color;
			data['rankIcon'] = this.rankIcon;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}