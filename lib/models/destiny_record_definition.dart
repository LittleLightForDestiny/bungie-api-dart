import 'destiny_display_properties_definition.dart';
import 'destiny_presentation_child_block.dart';
import 'destiny_record_title_block.dart';
import 'destiny_record_completion_block.dart';
import 'schema_record_state_block.dart';
import 'destiny_presentation_node_requirements_block.dart';

/**  */
class DestinyRecordDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** Indicates whether this Record's state is determined on a per-character or on an account-wide basis. */
	int scope;
	
	/**  */
	DestinyPresentationChildBlock presentationInfo;
	
	/**  */
	int loreHash;
	
	/**  */
	List<int> objectiveHashes;
	
	/**  */
	int recordValueStyle;
	
	/**  */
	DestinyRecordTitleBlock titleInfo;
	
	/**  */
	DestinyRecordCompletionBlock completionInfo;
	
	/**  */
	SchemaRecordStateBlock stateInfo;
	
	/** Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren't met. */
	DestinyPresentationNodeRequirementsBlock requirements;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
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
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['scope'] = this.scope;
			data['presentationInfo'] = this.presentationInfo != null? this.presentationInfo.toMap() : null;
			data['loreHash'] = this.loreHash;
			data['objectiveHashes'] = this.objectiveHashes;
			data['recordValueStyle'] = this.recordValueStyle;
			data['titleInfo'] = this.titleInfo != null? this.titleInfo.toMap() : null;
			data['completionInfo'] = this.completionInfo != null? this.completionInfo.toMap() : null;
			data['stateInfo'] = this.stateInfo != null? this.stateInfo.toMap() : null;
			data['requirements'] = this.requirements != null? this.requirements.toMap() : null;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}