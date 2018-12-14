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
		this.displayProperties,
		this.scope,
		this.presentationInfo,
		this.loreHash,
		this.objectiveHashes,
		this.recordValueStyle,
		this.titleInfo,
		this.completionInfo,
		this.stateInfo,
		this.requirements,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyRecordDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['scope'],
				data['presentationInfo'] != null ? DestinyPresentationChildBlock.fromMap(data['presentationInfo']) : null,
				data['loreHash'],
				data['objectiveHashes'] != null ? data['objectiveHashes']?.cast<int>() ?? null : null,
				data['recordValueStyle'],
				data['titleInfo'] != null ? DestinyRecordTitleBlock.fromMap(data['titleInfo']) : null,
				data['completionInfo'] != null ? DestinyRecordCompletionBlock.fromMap(data['completionInfo']) : null,
				data['stateInfo'] != null ? SchemaRecordStateBlock.fromMap(data['stateInfo']) : null,
				data['requirements'] != null ? DestinyPresentationNodeRequirementsBlock.fromMap(data['requirements']) : null,
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
			data['displayProperties'] = this.displayProperties.toMap();
			data['scope'] = this.scope;
			data['presentationInfo'] = this.presentationInfo.toMap();
			data['loreHash'] = this.loreHash;
			data['objectiveHashes'] = this.objectiveHashes;
			data['recordValueStyle'] = this.recordValueStyle;
			data['titleInfo'] = this.titleInfo.toMap();
			data['completionInfo'] = this.completionInfo.toMap();
			data['stateInfo'] = this.stateInfo.toMap();
			data['requirements'] = this.requirements.toMap();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}