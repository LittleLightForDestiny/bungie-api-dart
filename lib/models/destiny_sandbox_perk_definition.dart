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
		this.displayProperties,
		this.perkIdentifier,
		this.isDisplayable,
		this.damageType,
		this.damageTypeHash,
		this.perkGroups,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinySandboxPerkDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySandboxPerkDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['perkIdentifier'],
				data['isDisplayable'],
				data['damageType'],
				data['damageTypeHash'],
				data['perkGroups'] != null ? DestinyTalentNodeStepGroups.fromMap(data['perkGroups']) : null,
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
			data['displayProperties'] = this.displayProperties;
			data['perkIdentifier'] = this.perkIdentifier;
			data['isDisplayable'] = this.isDisplayable;
			data['damageType'] = this.damageType;
			data['damageTypeHash'] = this.damageTypeHash;
			data['perkGroups'] = this.perkGroups;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}