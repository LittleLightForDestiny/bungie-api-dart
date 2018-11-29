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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.originalIcon,
		String this.rootViewIcon,
		int this.nodeType,
		int this.scope,
		int this.objectiveHash,
		int this.completionRecordHash,
		DestinyPresentationNodeChildrenBlock this.children,
		int this.displayStyle,
		int this.screenStyle,
		DestinyPresentationNodeRequirementsBlock this.requirements,
		bool this.disableChildSubscreenNavigation,
		List<int> this.parentNodeHashes,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyPresentationNodeDefinition fromJson(Map<String, dynamic> data){
		return new DestinyPresentationNodeDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['originalIcon'],
				data['rootViewIcon'],
				data['nodeType'],
				data['scope'],
				data['objectiveHash'],
				data['completionRecordHash'],
				data['children'],
				data['displayStyle'],
				data['screenStyle'],
				data['requirements'],
				data['disableChildSubscreenNavigation'],
				data['parentNodeHashes'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPresentationNodeDefinition> fromList(List<dynamic> data){
		List<DestinyPresentationNodeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeDefinition.fromJson(item));
    });
    return list;
	}
}