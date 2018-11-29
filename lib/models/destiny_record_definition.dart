import 'destiny_display_properties_definition.dart';
import 'destiny_presentation_child_block.dart';
import 'destiny_record_title_block.dart';
import 'destiny_record_completion_block.dart';
import 'schema_record_state_block.dart';
import 'destiny_presentation_node_requirements_block.dart';
class DestinyRecordDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int scope;
	DestinyPresentationChildBlock presentationInfo;
	int loreHash;
	List<int> objectiveHashes;
	int recordValueStyle;
	DestinyRecordTitleBlock titleInfo;
	DestinyRecordCompletionBlock completionInfo;
	SchemaRecordStateBlock stateInfo;
	DestinyPresentationNodeRequirementsBlock requirements;
	int hash;
	int index;
	bool redacted;
	DestinyRecordDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.scope,
		DestinyPresentationChildBlock this.presentationInfo,
		int this.loreHash,
		List<int> this.objectiveHashes,
		int this.recordValueStyle,
		DestinyRecordTitleBlock this.titleInfo,
		DestinyRecordCompletionBlock this.completionInfo,
		SchemaRecordStateBlock this.stateInfo,
		DestinyPresentationNodeRequirementsBlock this.requirements,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyRecordDefinition fromJson(Map<String, dynamic> data){
		return new DestinyRecordDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['scope'],
				DestinyPresentationChildBlock.fromJson(data['presentationInfo']),
				data['loreHash'],
				data['objectiveHashes'],
				data['recordValueStyle'],
				DestinyRecordTitleBlock.fromJson(data['titleInfo']),
				DestinyRecordCompletionBlock.fromJson(data['completionInfo']),
				SchemaRecordStateBlock.fromJson(data['stateInfo']),
				DestinyPresentationNodeRequirementsBlock.fromJson(data['requirements']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRecordDefinition> fromList(List<dynamic> data){
		List<DestinyRecordDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordDefinition.fromJson(item));
    });
    return list;
	}
}