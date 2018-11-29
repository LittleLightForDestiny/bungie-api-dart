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

	static DestinySandboxPerkDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinySandboxPerkDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySandboxPerkDefinition.fromJson(item));
    });
    return list;
	}
}