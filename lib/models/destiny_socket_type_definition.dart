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

	static DestinySocketTypeDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinySocketTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySocketTypeDefinition.fromJson(item));
    });
    return list;
	}
}