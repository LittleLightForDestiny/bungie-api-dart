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

	static DestinyRecordDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['scope'],
				DestinyPresentationChildBlock.fromMap(data['presentationInfo']),
				data['loreHash'],
				data['objectiveHashes'],
				data['recordValueStyle'],
				DestinyRecordTitleBlock.fromMap(data['titleInfo']),
				DestinyRecordCompletionBlock.fromMap(data['completionInfo']),
				SchemaRecordStateBlock.fromMap(data['stateInfo']),
				DestinyPresentationNodeRequirementsBlock.fromMap(data['requirements']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRecordDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['scope'] = scope;
			data['presentationInfo'] = presentationInfo.toMap();
			data['loreHash'] = loreHash;
			data['objectiveHashes'] = objectiveHashes;
			data['recordValueStyle'] = recordValueStyle;
			data['titleInfo'] = titleInfo.toMap();
			data['completionInfo'] = completionInfo.toMap();
			data['stateInfo'] = stateInfo.toMap();
			data['requirements'] = requirements.toMap();
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}