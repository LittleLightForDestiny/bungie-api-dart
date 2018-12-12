import 'destiny_display_properties_definition.dart';
import 'destiny_insert_plug_action_definition.dart';
import 'destiny_plug_whitelist_entry_definition.dart';
import 'destiny_socket_type_scalar_material_requirement_entry.dart';
class DestinySocketTypeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyInsertPlugActionDefinition insertAction;
	List<DestinyPlugWhitelistEntryDefinition> plugWhitelist;
	int socketCategoryHash;
	int visibility;
	bool alwaysRandomizeSockets;
	bool isPreviewEnabled;
	bool hideDuplicateReusablePlugs;
	bool overridesUiAppearance;
	bool avoidDuplicatesOnInitialization;
	List<DestinySocketTypeScalarMaterialRequirementEntry> currencyScalars;
	int hash;
	int index;
	bool redacted;
	DestinySocketTypeDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		DestinyInsertPlugActionDefinition this.insertAction,
		List<DestinyPlugWhitelistEntryDefinition> this.plugWhitelist,
		int this.socketCategoryHash,
		int this.visibility,
		bool this.alwaysRandomizeSockets,
		bool this.isPreviewEnabled,
		bool this.hideDuplicateReusablePlugs,
		bool this.overridesUiAppearance,
		bool this.avoidDuplicatesOnInitialization,
		List<DestinySocketTypeScalarMaterialRequirementEntry> this.currencyScalars,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinySocketTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySocketTypeDefinition(
				data['displayProperties'],
				data['insertAction'],
				DestinyPlugWhitelistEntryDefinition.fromList(data['plugWhitelist']),
				data['socketCategoryHash'],
				data['visibility'],
				data['alwaysRandomizeSockets'],
				data['isPreviewEnabled'],
				data['hideDuplicateReusablePlugs'],
				data['overridesUiAppearance'],
				data['avoidDuplicatesOnInitialization'],
				DestinySocketTypeScalarMaterialRequirementEntry.fromList(data['currencyScalars']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinySocketTypeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinySocketTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySocketTypeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['insertAction'] = this.insertAction;
			data['plugWhitelist'] = this.plugWhitelist.map((item)=>item.toMap());
			data['socketCategoryHash'] = this.socketCategoryHash;
			data['visibility'] = this.visibility;
			data['alwaysRandomizeSockets'] = this.alwaysRandomizeSockets;
			data['isPreviewEnabled'] = this.isPreviewEnabled;
			data['hideDuplicateReusablePlugs'] = this.hideDuplicateReusablePlugs;
			data['overridesUiAppearance'] = this.overridesUiAppearance;
			data['avoidDuplicatesOnInitialization'] = this.avoidDuplicatesOnInitialization;
			data['currencyScalars'] = this.currencyScalars.map((item)=>item.toMap());
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}