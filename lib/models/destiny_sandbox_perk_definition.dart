import 'destiny_display_properties_definition.dart';
import 'destiny_talent_node_step_groups.dart';
class DestinySandboxPerkDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String perkIdentifier;
	bool isDisplayable;
	int damageType;
	int damageTypeHash;
	DestinyTalentNodeStepGroups perkGroups;
	int hash;
	int index;
	bool redacted;
	DestinySandboxPerkDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.perkIdentifier,
		bool this.isDisplayable,
		int this.damageType,
		int this.damageTypeHash,
		DestinyTalentNodeStepGroups this.perkGroups,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinySandboxPerkDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySandboxPerkDefinition(
				data['displayProperties'],
				data['perkIdentifier'],
				data['isDisplayable'],
				data['damageType'],
				data['damageTypeHash'],
				data['perkGroups'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinySandboxPerkDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinySandboxPerkDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySandboxPerkDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties;
			data['perkIdentifier'] = perkIdentifier;
			data['isDisplayable'] = isDisplayable;
			data['damageType'] = damageType;
			data['damageTypeHash'] = damageTypeHash;
			data['perkGroups'] = perkGroups;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}