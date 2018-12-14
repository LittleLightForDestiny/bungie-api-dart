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
		this.displayProperties,
		this.insertAction,
		this.plugWhitelist,
		this.socketCategoryHash,
		this.visibility,
		this.alwaysRandomizeSockets,
		this.isPreviewEnabled,
		this.hideDuplicateReusablePlugs,
		this.overridesUiAppearance,
		this.avoidDuplicatesOnInitialization,
		this.currencyScalars,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinySocketTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySocketTypeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['insertAction'] != null ? DestinyInsertPlugActionDefinition.fromMap(data['insertAction']) : null,
				data['plugWhitelist'] != null ? DestinyPlugWhitelistEntryDefinition.fromList(data['plugWhitelist']) : null,
				data['socketCategoryHash'],
				data['visibility'],
				data['alwaysRandomizeSockets'],
				data['isPreviewEnabled'],
				data['hideDuplicateReusablePlugs'],
				data['overridesUiAppearance'],
				data['avoidDuplicatesOnInitialization'],
				data['currencyScalars'] != null ? DestinySocketTypeScalarMaterialRequirementEntry.fromList(data['currencyScalars']) : null,
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
			data['plugWhitelist'] = this.plugWhitelist.map((item)=>item.toMap()).toList();
			data['socketCategoryHash'] = this.socketCategoryHash;
			data['visibility'] = this.visibility;
			data['alwaysRandomizeSockets'] = this.alwaysRandomizeSockets;
			data['isPreviewEnabled'] = this.isPreviewEnabled;
			data['hideDuplicateReusablePlugs'] = this.hideDuplicateReusablePlugs;
			data['overridesUiAppearance'] = this.overridesUiAppearance;
			data['avoidDuplicatesOnInitialization'] = this.avoidDuplicatesOnInitialization;
			data['currencyScalars'] = this.currencyScalars.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}