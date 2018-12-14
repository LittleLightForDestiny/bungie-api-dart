import 'destiny_display_properties_definition.dart';
import 'destiny_presentation_node_children_block.dart';
import 'destiny_presentation_node_requirements_block.dart';
class DestinyPresentationNodeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String originalIcon;
	String rootViewIcon;
	int nodeType;
	int scope;
	int objectiveHash;
	int completionRecordHash;
	DestinyPresentationNodeChildrenBlock children;
	int displayStyle;
	int screenStyle;
	DestinyPresentationNodeRequirementsBlock requirements;
	bool disableChildSubscreenNavigation;
	List<int> parentNodeHashes;
	int hash;
	int index;
	bool redacted;
	DestinyPresentationNodeDefinition(
		this.displayProperties,
		this.originalIcon,
		this.rootViewIcon,
		this.nodeType,
		this.scope,
		this.objectiveHash,
		this.completionRecordHash,
		this.children,
		this.displayStyle,
		this.screenStyle,
		this.requirements,
		this.disableChildSubscreenNavigation,
		this.parentNodeHashes,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyPresentationNodeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['originalIcon'],
				data['rootViewIcon'],
				data['nodeType'],
				data['scope'],
				data['objectiveHash'],
				data['completionRecordHash'],
				data['children'] != null ? DestinyPresentationNodeChildrenBlock.fromMap(data['children']) : null,
				data['displayStyle'],
				data['screenStyle'],
				data['requirements'] != null ? DestinyPresentationNodeRequirementsBlock.fromMap(data['requirements']) : null,
				data['disableChildSubscreenNavigation'],
				data['parentNodeHashes'] != null ? data['parentNodeHashes']?.cast<int>() ?? null : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPresentationNodeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['originalIcon'] = this.originalIcon;
			data['rootViewIcon'] = this.rootViewIcon;
			data['nodeType'] = this.nodeType;
			data['scope'] = this.scope;
			data['objectiveHash'] = this.objectiveHash;
			data['completionRecordHash'] = this.completionRecordHash;
			data['children'] = this.children;
			data['displayStyle'] = this.displayStyle;
			data['screenStyle'] = this.screenStyle;
			data['requirements'] = this.requirements;
			data['disableChildSubscreenNavigation'] = this.disableChildSubscreenNavigation;
			data['parentNodeHashes'] = this.parentNodeHashes;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}